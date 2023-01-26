# JavaScript and the Page

JavaScript and Python have similar capabilities. So, why use JavaScript at all? Well, there are a few different reasons people might give, but one key reason is that the _browser_ understands JavaScript.

When you include JavaScript on a webpage, your code has access to the elements on the page, and it can add, change, or remove them. JS can make things happen on the page!

This lesson introduces some of the ways JS can interact with your HTML elements.

> 🔎 This lesson requires running scripts in the Devtools. Open the Devtools now!

## Selecting Elements

As you’ve learned, webpages are made of HTML Elements. For JavaScript to act on the page, it has to be able to interact with those elements.

In the console, copy and paste the following snippet, then hit Enter:

```javascript
document.querySelector('h1.menu-title')
```

That selects the HTML element of the title bar at the top of the page. If you hover over the result in the console, you'll see the element highlighted on the page.

### `querySelector`

Take a closer look at the part in the parentheses: `'h1.menu-title'`. That’s oddly familiar...

It’s a CSS Selector! JavaScript uses CSS Selectors to select elements on the page.

<aside>

✍🏾 The function `querySelector` asks the page for the first element that matches the CSS selector you give it.

</aside>

You write `document.querySelector` to find elements inside the `document`. The document represents the whole page, so all of the elements should be inside it.

### Inspecting and changing properties

What do you see when you run this snippet in the devtools console?

```javascript
document.querySelector('h1.menu-title').innerText
```

<details><summary>Result</summary>

When I run that snippet, I see the text that’s in the top bar, "Web Foundations".

</details>

`.innerText` is a **property** of an element. With JavaScript, you can *inspect* properties to see what the current values are.

You can also *change* properties. Run this snippet:

```javascript
document.querySelector('h1.menu-title').style = "background-color: lavender"
```

Look at the top bar. You changed the color, using JavaScript!

Try changing the bar to a different color, or try changing its other properties.

<details><summary>How would you change the text of the title? Try it!</summary>

Here's one solution:

```js
document.querySelector('h1.menu-title').innerText = "Intro to Gardening 🌱"
```

Try running that, if you weren't able to change the title already.

</details>

## Adding and removing classes

As you've seen, you change other properties using JavaScript. However, JavaScript isn’t a great language for styling. CSS is much better. To add more styles using JavaScript, you would have to do:

```javascript
document.querySelector('h1.menu-title').style = "background-color: lavender; padding: 12px; font-family: monospace"
```

It works... but it’s not as nice as writing styles in CSS.

Instead of changing CSS values with JavaScript directly, you can add and remove **classes**.

You’ve seen the `class` attribute in HTML and used the `.class` selector in CSS to style matching elements. With JavaScript, classes get a whole new power.

In your CSS file, you have something like:

```css
.retro {
	background-color: lavender;
	padding: 12px;
	font-family: monospace;
}
```

Which has the same styles as the snippet above.

To add the `retro` class to the element in your JS code, you write:

```javascript
document.querySelector('h1.menu-title').classList.add('retro')
```

> This page's CSS file has the `.retro` class, so that this snippet can work. Other classes won't work unless they are added to the CSS.

You can also remove classes too:

```javascript
document.querySelector('h1.menu-title').classList.remove('retro')
```

## Copy-Paste-Edit Development

It’s very normal at this point to be confused about the vocabulary, the terms, the syntax, and how all of it actually works. Our focus right now is on two things:

- Showing you what cool things you can do with JavaScript
- Getting you to the level of **copy-paste-edit development**

You won’t learn everything about JavaScript syntax in this course. Instead, you should be able to find snippets of code online, copy them into your project, and adapt them to your website. That means you have to know a little bit about how the code works, but you don’t need to know every detail.

> **Don’t stop at Copy-Paste-Edit!**
>
> After you build some cool sites by copying and pasting code, you should take the time to learn more about how the language works! There’s lots of great JavaScript learning materials that you can use to build deeper knowledge.

## Practice: The Cat That Disappeared

<aside>

🐈 Practice hiding elements by making the cat disappear after a few seconds.

<!-- TODO: Replace with Replit -->

[![the-cat-that-disappeared](https://img.shields.io/static/v1?label=Open%20Project&message=the%20cat%20that%20disappeared&color=blue)](https://classroom.github.com/a/Mdmqw6la)

</aside
