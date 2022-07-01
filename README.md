# Web Foundations

Created from the [Kibo Course Template](https://github.com/rrcobb/course-template)

A template for an [mdbook](https://rust-lang.github.io/mdBook/index.html)-powered course site.

## What's here?

```
$ tree .
.
├── README.md
├── convert.rb
└── course
    ├── book.toml
    └── src
        ├── SUMMARY.md
        └── chapter_1.md
```

### README.md

You're lookin at it.

### convert.rb

Script to convert a Notion markdown export into mdbook compatible markdown.

1. Download the notion export from your course
2. Edit the constants to fit your course and set the notion export directory.
3. Run `./convert.rb`

This recursively walks the notion export files, cleaning them up as it goes:
- renames the files to use a sanitized slug
- fixes the filenames in the markdown files
- creates the SUMMARY.md file that mdbook uses
- re-srcs the img tags with the new file locations

And it fixes (by matching and replacing on regexes) notion export issues with:
- titles - removes leading numbers / "lesson 0"
- slugs - removes leading numbers to match titles
- asides
- youtube embeds
- loom embeds
- replit embeds
- typeform
- padlet
- google forms
- google docs / slides


### course/

Holds all the course files (in `src/`), the mdbook config (`book.toml`) 

The static site is built to `course/output` but that gets ignored by git.

### course/output

To generate the static site, run:

```
cd course
mdbook build
```

Output lives here, in `course/output`.

You can usually ignore the files in `output`, git will.

Note: we used to commit the build artifacts, but don't anymore.

### course/book.toml

Config file for the course. Authors, title, other mdbook settings.

https://rust-lang.github.io/mdBook/format/configuration/index.html

### course/src/SUMMARY.md

This gets turned into the sidebar on the site. 

It's the text that should show, plus links to other md files in `course/src/`.

https://rust-lang.github.io/mdBook/format/summary.html

### course/src/*

These are the pages that actually make up the course. It's nice to put
things in folders to organize the different pages, so that's what the convert
script does by default.

## Getting Started

Install mdbook: https://rust-lang.github.io/mdBook/guide/installation.html

if you use rust:

```
cargo install mdbook
```

Or use your package manager: `brew install mdbook`, or download a release from
Github.

## Run the book locally

```
cd course
mdbook serve --open
```

## Goals

- script the conversion from notion export to mdbook format
- do not modify any of the notion export in place, only put into course/src

## Notion steps

- Navigate to the root notion page of the export
- click 'export' from the menu
- unzip the folder, move it here, call it ./notion-export 

## Deployment

We use `vercel` to handle deploys. It takes some setup to connect a repo to
vercel, assign a production domain, and set up auto-deploys.

If all that's been done...


* Github actions will run `mdbook build` on pushed changes
* All pushes will automatically deploy to vercel
* Vercel will notify the #tech-status channel on Slack with the deploy preview
* If you pushed to `main`, it will also deploy to the live site. Watch out!

## Previews and Drafts

If you'd like to preview changes, push to a branch (like the `draft` branch that
will hang around). Check the #tech-status channel in Slack for a link to the
preview when you make a change.

Remember - commits to main get built and deployed to the production site; others
just get previews.
