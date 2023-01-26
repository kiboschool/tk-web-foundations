# More HTML Elements

<aside>

😃 This is a bonus section on other HTML tags.

You don’t need to know these, but they’re pretty cool if you have extra time!

</aside>

## Other elements and tags

As you learn more web development, you’ll see tons of other tags.

Here’s a preview of some of the tags you’ll encounter. Again - you don’t need to know these ones. Remember that you can look them up later!

### Stylized text elements

There are lots of elements for particular kinds of styled text.

Here’s some of the tags, but without examples. Don’t try to memorize them. Instead, skim them, and then remember that you can always go back and look up the right element to use for a particular situation.

<details>
<summary>
<strong>List: stylized text elements</strong>
</summary>

- `<code>`: used to style blocks of code.
- `<pre>`: used for text that has been pre-formatted, like a poem, where the spaces are already there. Otherwise, spaces, tabs, and newlines all get collapsed by the browser.
- `<small>`: Small text
- `<u>`: Underlined text
- `<i>`: Italicized text
- `<s>`: Text with a strikethrough, like ~~this~~
- `<q>`: “quoted text that fits within a line”
- `<blockquote>`: A block quote, usually multiple lines
- `<mark>`: Highlighted text
- `<del>`, `<ins>`: Text that’s been deleted or inserted
- `<sub>`, `<sup>`: Subscript ($_{subscript}$) and Superscript ($^{superscript}$)

</details>

### Semantic elements

**Semantics** refers to the *meaning* of a piece of code. It’s about "*what purpose or role does that HTML element have*", rather than "*what does it look like?"*.

> When approaching which markup to use, ask yourself, "What element(s) best describe/represent the data that I'm going to populate?”
>
> *MDN*
>

HTML elements mean something. A `<p>` isn’t just styled like a paragraph, it tells other programs that the text inside *really is* a paragraph.

There are lots of kinds of “things” that go on webpages. For many of them, there’s a matching HTML element. Here’s some examples (there’s more than 100!)

<details>
<summary>
<strong>List of Semantic Elements</strong>
</summary>

- `<article>`
- `<section>`
- `<nav>`
- `<footer>`
- `<aside>`
- `<details>`
- `<summary>`

</details>

<details>
<summary>
<strong>Further Exploration: Semantic Elements</strong>
</summary>

[https://developer.mozilla.org/en-US/docs/Glossary/semantics](https://developer.mozilla.org/en-US/docs/Glossary/semantics)

Questions to explore:

- Why use Semantic HTML?
- What are the benefits of Semantic Elements?
- When would you use these?

</details>

### `<div>`, `<span>`: Generic Elements

Sometimes, you don’t know which semantic element to use. `<div>` stands for “division” and it’s a generic block of HTML. `<span>` is a generic “span” of text characters, inline with some other text. If you don’t know another element that’s more appropriate, you can use one of these instead.

<p class="codepen" data-height="300" data-default-tab="html,result" data-slug-hash="ZExGgPV" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/ZExGgPV">
  div and span</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

### Structure and Page Information

When you create an HTML project, your editor might suggest a bunch of default starter HTML in `index.html`. You will usually not need to write these tags yourself, but here’s what they mean in case you were curious.

<details>
<summary>
    <strong>List: Structure and Page Information tags</strong>
</summary>

- `<!DOCTYPE html>` isn’t actually an element. It goes at the top of a file to say that it’s HTML.
- `<html>` is the ‘root element’ of an HTML document. All of the other elements should be inside it.
- `<body>` is where all the page content should go - everything you see on the page.
- `<head>` is hidden metadata. It’s data about the webpage that doesn’t show up on the screen.
- `<title>` is the title of the page. It’s what shows in search results and in the browser tab.
- `<meta>` is for various other metadata about the page. There’s lots of types, which you can [read about on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/meta).

[Read more on MDN about page metadata](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML)

</details>

### Multimedia and Embedding

There are lots of tags for including media on a webpage.

<details>
<summary>
    <strong>List: Media tags</strong>
</summary>

`<iframe>` is for embedding external site content onto a page

`<audio>` for an audio recording

`<video>` for a video recording

`<canvas>` is an element where you can draw shapes programmatically. Used for animations and games!

`<object>` is an element for embedded content, like a pdf or a video.

[Read more on MDN about multimedia and embedding](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding)

</details>

### Forms

There is a whole set of HTML tags that are all about forms. We’ll focus on them in Week 3, but here’s the list as a preview:

<details>
<summary>
    <strong>List: Form tags</strong>
</summary>

`<form>` is for creating a form and grouping all the elements inside as part of the form

`<input>` represents an input. There are [lots of different types of inputs](https://developer.mozilla.org/en-US/docs/Learn/Forms/HTML5_input_types)!

`<button>` is a button, like a Next or Submit button.

`<select>` shows a dropdown

`<option>` is for the items in a select dropdown, like `<li>` is for items in a list

MDN has [several pages on Forms](https://developer.mozilla.org/en-US/docs/Learn/Forms). We’ll learn more in Week 3.

</details>

## MDN Element Reference

Those are the core elements you’ll encounter.

For the full listing of HTML Elements, check out the [MDN Elements Reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Element).

---

*Happy Elementing!*