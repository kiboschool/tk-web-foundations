# Kibo Course Template

A template for an [mdbook](https://rust-lang.github.io/mdBook/index.html)-powered course site.

## What's here?

```
$ tree .
.
├── README.md
├── convert.rb
└── course
    ├── output
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

### course/

Holds all the course files (in `src/`), the mdbook config (`book.toml`) and the
static site output (`course/output`). 

### course/output

To generate the static site, run:

```
cd course
mdbook build
```

Output lives here, in `course/output`.

*Note*: In a bit of an unusual move, we commit all the build artifacts. This kinda sucks
for the git commit history, but it makes the build process really dumb, and dumb
is simple and easy to debug. What should be served on the production site?
Whatever is in `course/output`.

You can usually ignore the files in `output`.

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

* Pushes to the `main` branch will automatically deploy to vercel. 
* Vercel serves the static content from the `course/output` directory. Run `mdbook
build` to update the build output.

### Manual deployment

You'll need vercel permissions.

Create a preview deploy:

```
vercel
```

Deploy to production:

```
vercel --prod
```
