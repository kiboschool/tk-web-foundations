# TK Web Foundations

The curriculum for the Try Kibo Web Foundations class.

TL;DR --
* Uses [mdbook](https://github.com/rust-lang/mdBook) to build markdown pages into static html
* Pages are determined by the `src/SUMMARY.md` file
* Git push to the `main` branch to deploy the main site (ditto for `draft`)

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
mdbook serve --open
```

## What's here?

```
$ tree .
.
├── README.md
├── book.toml
└── src
    ├── SUMMARY.md
    └── chapter_1.md
```

### book.toml

Config file for the course. Authors, title, other mdbook settings.

https://rust-lang.github.io/mdBook/format/configuration/index.html

### src/SUMMARY.md

This gets turned into the sidebar on the site.

It's the text that should show, plus links to other md files in `course/src/`.

https://rust-lang.github.io/mdBook/format/summary.html

### src/*

Holds all the course files

These are the pages that actually make up the course. It's nice to put
things in folders to organize the different pages, since there are a lot of pages.

### output

The static site is built to `output/` but that gets ignored by git.

To generate the static site, run:

```
cd course
mdbook build
```

You can usually ignore the files in `output`, but if you are seeing some weird thing, then maybe it's helpful for debugging.

## Deployment

We use `vercel` to handle deploys. It takes some setup to connect a repo to
vercel, assign a production domain, and set up auto-deploys.

If all that's been done...

* Github actions will run `mdbook build` on pushed changes
* All pushes will automatically deploy to vercel
* If you pushed to `main`, it will also deploy to the live site. Watch out!

## Previews and Drafts

If you'd like to preview changes, push to the `draft` branch to preview when you make a change.