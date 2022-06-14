#!/usr/bin/env ruby
#
# Script to convert a Notion markdown export
# into mdbook compatible markdown
#
# Edit the constants to fit your course and notion export directory
# Run ./convert.rb

require 'cgi'
require 'fileutils'
require 'net/http'

NOTION_ROOT = "./notion-export"
TARGET_DIR = "./course/src"
TITLE = "Web Foundations"

OLD_TO_NEW = {}
BACKUP = {}
MD_OG_TO_TEXT = {}
MD_NEW_TO_TEXT = {}

UUID_PATTERN = /\ ([a-f0-9]{32})/
lesson_words = ["week", "lesson"]
LEADING_NUMS_PATTERN = /^(#{lesson_words.join('|')})?[\d\-]*(?=[a-zA-Z]+)/i
# change filenames
def slugify(item)
  item
    .gsub(UUID_PATTERN, "") # remove notion uuid
    .downcase
    .gsub(/[^a-zA-Z0-9\.\/]+/, "-") # kebab-case
    .gsub(LEADING_NUMS_PATTERN, "") # replace leading nums
    .gsub(/-+$/, "") # trailing -
    .gsub(/-(?=\.[a-z]+)/, "") # remove trailing -
    # .gsub(/^[\d-]+/, "") # remove leading numbers and - 
end

def titleify(slug)
  slug
    .split("/").last # just the file part
    .gsub(LEADING_NUMS_PATTERN, "") # replace leading nums
    .split("-").join(" ") # Go from kebab-case to sentence case
    .gsub(/\.[a-z]+$/, "") # remove file extension
    .capitalize
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

# Heuristic: An internal md link is one that doesn't begin with http
INTERNAL_LINK_PATTERN = /\[(?<linkname>.+)\]\((?!http)(?<url>.+)\)/
# replace the links in the text that depend on any of the filenames
# each of the md files may have text that includes the page links
def replace_internal_links(text)
  text.gsub(INTERNAL_LINK_PATTERN) do |_|
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
end

# Heuristic: an internal img src doesn't start with http
# or ..
INTERNAL_SRC_PATTERN = /src="(?!(http|\.\.))(?<src>[^\"]+)"/
def replace_internal_img_src(text)
  text.gsub(INTERNAL_SRC_PATTERN) do |_|
    matches = $~
    src = CGI.unescape(matches[:src])
    found = OLD_TO_NEW.include?(src)
    new_url = if found
      OLD_TO_NEW[src]
    else
      src = src.split("/").last
      short = BACKUP.include?(src)
      if short
        BACKUP[src]
      else
        puts "MISSING: #{src}"
        src
      end
    end
    "src=\"#{new_url}\""
  end
end

# replace youtube links with iframes
YOUTUBE_PATTERN = /\[https:\/\/(youtu\.be\/|www\.youtube\.com\/watch\?v\=)(?<ytid>[a-zA-Z0-9]+)\]\(.+\)/
def replace_youtube(text)
  text.gsub(YOUTUBE_PATTERN) do |_|
    matches = $~
    ytid = matches[:ytid]
    "<div style=\"position: relative; padding-bottom: 56.25%; height: 0;\"><iframe src=\"https://www.youtube.com/embed/#{ytid}\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen style=\"position: absolute; top: 0; left: 0; width: 100%; height: 100%;\"></iframe></div>"
  end
end

# replace loom links with iframes
LOOM_PATTERN = /\[https:\/\/www\.loom\.com\/share\/(?<loomid>[a-zA-Z0-9]+)\]\(.+\)/
def replace_loom(text)
  text.gsub(LOOM_PATTERN) do |_|
    matches = $~
    loomid = matches[:loomid]
    "<div style=\"position: relative; padding-bottom: 56.25%; height: 0;\"><iframe src=\"https://www.loom.com/embed/#{loomid}\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen style=\"position: absolute; top: 0; left: 0; width: 100%; height: 100%;\"></iframe></div>"
  end
end

# replace replit links with iframe
REPLIT_PATTERN = /\[(?<repliturl>https:\/\/replit\.com\/team\/[\/\-a-zA-Z0-9]+)\]\(.+\)/
def replace_replit(text)
  text.gsub(REPLIT_PATTERN) do |_|
    matches = $~
    repliturl = matches[:repliturl]
    "<div style=\"position: relative; padding-bottom: 56.25%; height: 0;\"><iframe src=\"#{repliturl}\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen style=\"position: absolute; top: 0; left: 0; width: 100%; height: 100%;\"></iframe></div>"
  end
end

# replace typeform links with div/script combo
TYPEFORM_PATTERN = /\[https:\/\/[a-z]+\.typeform\.com\/to\/(?<tfid>[a-zA-Z0-9]+)\]\(.+\)/
def replace_typeform(text)
  text.gsub(TYPEFORM_PATTERN) do |_|
    matches = $~
    tfid = matches[:tfid]
    "<div data-tf-widget=\"#{tfid}\" data-tf-medium=\"snippet\" style=\"width:100%;height:400px;\"></div><script src=\"//embed.typeform.com/next/embed.js\"></script>"
  end
end

# replace padlet links with embeds
PADLET_PATTERN = /\[https:\/\/padlet\.com\/[a-zA-Z]+\/(?<padletid>[a-zA-Z0-9]+)\]\(.+\)/
def replace_padlet(text)
  text.gsub(PADLET_PATTERN) do |_|
    matches = $~
    padletid = matches[:padletid]
    "<div style=\"border:1px solid rgba(0,0,0,0.1);border-radius:2px;box-sizing:border-box;overflow:hidden;position:relative;width:100%;background:#F4F4F4\"><iframe src=\"https://padlet.com/embed/#{padletid}\" frameborder=\"0\" allow=\"camera;microphone;geolocation\" style=\"width:100%;height:608px;display:block;padding:0;margin:0\"></iframe></div>"
  end
end

# replace google form links with embeds
# turns out this is a pain in practice, since Notion exports the shortlink
# have to do a request to google to get the underlying form id; 
# generate an embeddable version...
# some also-grimy hacks to get the url formatted right for presentations...
GDOCS_PATTERN = /(\[(?<gform_shortlink>https:\/\/forms\.gle\/[a-zA-Z0-9]+)\]\(.+\))|(\[(?<gdocs_url>https:\/\/docs.google.com\/[a-zA-Z0-9\/\#\=\.\?\-\_]+)\]\(.+\))/
def replace_google_forms(text)
  text.gsub(GDOCS_PATTERN) do |_|
    matches = $~
    shortlink = matches[:gform_shortlink]
    full_url = matches[:gdocs_url]
    if !full_url
      response = Net::HTTP.get_response(URI.parse(shortlink))
      full_url = case response
                 when Net::HTTPSuccess     then shortlink
                 when Net::HTTPRedirection then response['location']
                 end
      uri = URI(full_url)
      if uri.query
        full_url = full_url + "&embed=true"
      else
        full_url = full_url + "?embed=true"
      end
    elsif /presentation\/d\/(?<pres_id>.+)\/edit/ =~ full_url
      match = $~
      pres_id = match[:pres_id]
      full_url = "https://docs.google.com/presentation/embed?id=#{pres_id}"
    end
    "<div style=\"width:100%;height:500px;\"><iframe src=\"#{full_url}\" frameborder=\"0\" sandbox=\"allow-scripts allow-popups allow-top-navigation-by-user-activation allow-forms allow-same-origin\" allowfullscreen=\"\" style=\"width: 100%; height: 100%; border-radius: 1px; pointer-events: auto; background-color: white;\"></iframe></div>"
  end
end

# Add newlines to the aside tag, to re-enter md mode in the parser
ASIDE_PATTERN = /\<aside\>/
def fix_asides(text)
  text.gsub(ASIDE_PATTERN, "<aside>\n\n")
end

def fix_titles(text, slug)
  ["# #{titleify(slug)}", text.lines[1..-1].join].join("\n")
end

MD_OG_TO_TEXT.each do |og_filename, text|
  updated_text = replace_internal_links(text)
  updated_text = replace_internal_img_src(updated_text)
  updated_text = replace_youtube(updated_text)
  updated_text = replace_loom(updated_text)
  updated_text = replace_replit(updated_text)
  updated_text = replace_typeform(updated_text)
  updated_text = replace_padlet(updated_text)
  updated_text = replace_google_forms(updated_text)
  updated_text = fix_asides(updated_text)
  new_slug = OLD_TO_NEW[og_filename]
  updated_text = fix_titles(updated_text, new_slug)
  if !new_slug
    raise "no new slug for #{og_filename}"
  end
  MD_NEW_TO_TEXT[new_slug] = updated_text
end

# book format
# ./book/src/SUMMARY.md
# ./book/src/[chapter].md
# ./book/src/[chapter]/subchapter.md

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
