# Web Development

This course is about how to build web pages.

**Web Development** is everything that’s involved in building websites. Websites as different as Youtube, Wikipedia, Twitter, and Google all use the same building blocks under the hood. Under the hood, all of those websites use **HTML**, **CSS**, and **JavaScript**.

All the familiar features like text, images, colors, input boxes, forms, and videos are made out of these technologies. There’s some features like chat or purchases that require learning more than what we’ll cover in this course, but everything you see on the web is based on these foundational languages.

In this course, you’ll learn the basics of building websites with HTML, CSS, and JavaScript.

## HTML, CSS, and JavaScript

Web pages are built using different technologies. The most basic and fundamental ones are HTML, JavaScript, and CSS.

Roughly speaking,

- **HTML** is for content
- **CSS** is for styles
- **JavaScript** is for interactions

These three languages come together to make up a website.

## HTML

HTML makes up the content and structure of the webpage. It’s what a page is made of.

Here’s an example.

```html
<p>
	This is a paragraph. It has an
	<a href="https://example.com">
		Example Link
	</a>
	inside the paragraph.
</p>
<img src="valley-waterfall.png" alt="this is an example image" />
```

HTML is text! The syntax uses the angle brackets `<>` to identify elements that make up a page. You'll learn lots of different elements.

## CSS

CSS controls the appearance of HTML elements.

CSS is made of **rules** that look like this:

```css
p {
	color: red;
}
```

This CSS sets the color of the text within paragraphs to red.

Here’s the result:

![paragraph with red text](/lessons/foundations/intro-to-web-development/css-example-red-paragraph.png)

Here’s the HTML content that's being styled:

```html
<p>
	This is a paragraph. It has an <a href="https://example.com">Example Link</a> inside the paragraph.
</p>
```

## JavaScript

JavaScript (often abbreviated JS) is a programming language that runs within the browser. It has many of the same features as other programming languages like Python, Ruby, or Java, but lots of quirks and specific details to learn about the language itself.

Here's a small example program in JavaScript that adds a list of names to the page:

```js
let names = ["Lola", "Wasiu", "Rob"]

for (let name in names) {
	document.querySelector('.container') += name
}
```

## In summary

- Websites are made of HTML, CSS, and JavaScript
- HTML has elements that look like

```html
<a href="https://example.com">A Link Example</a>
```

- CSS has rules that control the appearance of selected elements, like

```css
p {
	color: red;
}
```

- JS is a programming language like Python, but with some differences in syntax and what it can do

For the rest of the course, you'll dive deeper into these three languages, and get lots of practice reading and writing these languages to build webpages.
