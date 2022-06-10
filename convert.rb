#!/usr/bin/env ruby
#
# Script to convert a Notion markdown export
# into mdbook compatible markdown
#
# Edit the constants to fit your course and notion export directory
# Run ./convert.rb

require 'cgi'
require 'fileutils'

NOTION_ROOT = "./notion-export"
TARGET_DIR = "./course/src"
TITLE = "Web Foundations"

OLD_TO_NEW = {}
BACKUP = {}
MD_OG_TO_TEXT = {}
MD_NEW_TO_TEXT = {}

UUID_PATTERN = /\ ([a-f0-9]{32})/
# change filenames
def slugify(item)
  item
    .gsub(UUID_PATTERN, "") # remove notion uuid
    .downcase
    .gsub(/[^a-zA-Z0-9\.\/]+/, "-") # kebab-case
    .gsub(/-+$/, "") # trailing -
    .gsub(/-(?=\.[a-z]+)/, "") # remove trailing -
    # (skipping, numbers are good, actually)
    # .gsub(/^[\d-]+/, "") # remove leading numbers and - 
end

# build up list of all the filenames + text in memory
def walk(dir, dir_slug="")
  Dir.children(dir).each do |item|
    path = File.join(dir, item)
    old_full_name = path.gsub(NOTION_ROOT + "/", "")
    new_full_name = File.join(dir_slug, slugify(item))
    OLD_TO_NEW[old_full_name] = new_full_name
    # very possible that these links will be broken and need to be fixed
    # likely they can be fixed by using the new_full_name
    BACKUP[item] = new_full_name
    if Dir.exists?(path)
      walk(path, new_full_name) # recurse
    else
      if path.end_with?(".md") # naive test for markdown
        text = File.read(path)
        MD_OG_TO_TEXT[old_full_name] = text
      end
    end
  end
end

walk(NOTION_ROOT, "")

# TODO: internal img src
INTERNAL_LINK_PATTERN = /\[(?<linkname>.+)\]\((?!http)(?<url>.+)\)/
MD_OG_TO_TEXT.each do |og_filename, text|
  # replace the links in the text that depend on any of the filenames
  # each of the md files may have text that includes the page links
  updated_text = text.gsub(INTERNAL_LINK_PATTERN) do |_|
    matches = $~
    name = CGI.unescape(matches[:url])
    found = OLD_TO_NEW.include?(name)
    new_url = if found
      OLD_TO_NEW[name]
    else
      name = name.split("/").last
      short = BACKUP.include?(name)
      if short
        BACKUP[name]
      else
        puts "MISSING: #{name}"
        name
      end
    end
    "[#{matches[:linkname]}](#{new_url})"
  end
  new_slug = OLD_TO_NEW[og_filename]
  if !new_slug
    raise "no new slug for #{og_filename}"
  end
  MD_NEW_TO_TEXT[new_slug] = updated_text
end

# course format
# ./course/src/SUMMARY.md
# ./course/src/[chapter].md
# ./course/src/[chapter]/subchapter.md

# Write each old -> new, in new dir
# except, if it's md, write the updated text
OLD_TO_NEW.each do |old, new|
  old_path = File.join(NOTION_ROOT, old)
  new_path = File.join(TARGET_DIR, new)
  if old.end_with?(".md") # naive test for markdown
    puts "markdown: -> #{new}"
    # FileUtils.mkdir_p(File.dirname(new))
    text = MD_NEW_TO_TEXT[new]
    File.write(new_path, text)
  else
    if Dir.exists?(old_path) #is a directory
      puts "mkdir: -> #{new_path}"
      FileUtils.mkdir_p(new_path)
    else
      puts "copy: -> #{new_path}"
      FileUtils.mkdir_p(File.dirname(new_path))
      FileUtils.cp(old_path, new_path)
    end
  end
end


# Write the file SUMMARY.md
lesson_words = ["week", "lesson"]
LEADING_NUMS_PATTERN = /^(#{lesson_words.join('|')})?[\d\-.]*/i
def titleify(slug)
  slug
    .split("/").last # just the file part
    .gsub(LEADING_NUMS_PATTERN, "") # replace leading nums
    .split("-").join(" ") # Go from kebab-case to sentence case
    .gsub(/\.[a-z]+$/, "") # remove file extension
    .capitalize
end

def md_link(text, url)
  if url.match?(/[()]/)
    raise "md url shouldn't have parens, #{url}"
  end
  "[#{text}](#{url})"
end

def md_relative_path(dir, filename)
  File.join(dir.gsub(TARGET_DIR + "/", ''), filename)
end

# take care - 'w' truncates
File.open(File.join(TARGET_DIR, "SUMMARY.md"), "w") do |f|
  f.puts "# #{TITLE}"
  f.puts
  # Turn top-level page into introduction
  intro = Dir.children(TARGET_DIR).find { |path| !path.match("SUMMARY") && path.end_with?(".md") }
  f.puts md_link(titleify(intro), intro)
  f.puts
  f.puts "## Lessons"
  f.puts
  dirs = Dir.children(TARGET_DIR)
    .map { |path| File.join(TARGET_DIR, path) }
    .filter { |path| Dir.exists?(path) }
  puts "dirs: #{dirs}"

  # Walk the chapter and subchapter dirs
  # md files get linked
  # dirs get walked, with more indentation
  # titles are un-slugged

  dirs.each do |dir|
    chapters = Dir.children(dir).filter { |path| path.end_with?(".md") }.sort
    chapters.each do |chapter|
      f.puts "- #{md_link(titleify(chapter), md_relative_path(dir, chapter))}"
      # get the matching subdir, print its contents
      subchapter_dir = File.join(dir, chapter.gsub(/\.md$/,''))
      if Dir.exists?(subchapter_dir)
        subchapters = Dir.children(subchapter_dir).filter { |path| path.end_with?(".md") }.sort
        subchapters.each do |subchapter|
          f.puts "\t- #{md_link(titleify(subchapter), md_relative_path(subchapter_dir, subchapter))}"
        end
      end
    end
  end
end
