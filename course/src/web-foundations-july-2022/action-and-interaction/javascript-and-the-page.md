# JavaScript and the Page

*Estimated Time: 45 minutes*

---

## Selecting Elements

As you’ve learned, webpages are made of HTML Elements. For JavaScript to act on the page, it has to be able to interact with those elements.

Open the Devtools console and enter the following snippet:

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

You write `document.querySelector` to find elements inside the `document`. If you have any other HTML element in JavaScript, you can look for elements inside it instead.

### Inspecting and changing properties

What do you see when you run this snippet?

```javascript
document.querySelector('h1.menu-title').innerText
```

<details><summary>Result</summary>

When I run that snippet, I see the text that’s in the top bar.

</details>

`.innerText` is a **property** of an element. With JavaScript, you can *inspect* properties to see what the current values are. 

You can also *change* properties. Run this snippet:

```javascript
document.querySelector('h1.menu-title').style = "background-color: lavender"
```

Look at the top bar. You changed the color, using JavaScript!

Try changing the bar to a different color, or try changing its other properties.

## Adding and removing classes

As you've seen, you change other properties using JavaScript. However, JavaScript isn’t a great language for styling. CSS is much better. To add more styles using JavaScript, you would have to do: 

```javascript
document.querySelector('h1.menu-title').style = "background-color: lavender; padding: 12px; font-family: monospace"
```

It works... but it’s not as nice as writing styles in CSS.

Instead of changing CSS values with JavaScript directly, instead you can add and remove **classes**. You’ve seen the `class` attribute in HTML before, and used the `.class` selector in CSS to style the matching elements. With JavaScript, classes get a whole new power.

In your CSS file, you could have something like:

```css
.retro {
	background-color: lavender;
	padding: 12px;
	font-family: monospace;
}
```

Which has the same styles as the snippet above.

Then in your JS code, you could write:

```javascript
document.querySelector('h1.menu-title').classList.add('retro')
```

To add the `retro` class and style the element. Try it!

You can also remove classes too:

```javascript
document.querySelector('h1.menu-title').classList.remove('retro')
```

## Copy-Paste-Edit Development

We haven’t talked much about JavaScript syntax. The JavaScript in 14 minutes activity introduced a ton of terms that we haven’t covered, and then we moved along to selecting elements and changing their appearance.

It’s very normal at this point to be confused about the vocabulary, the terms, the syntax, and how all of it actually works. Our focus right now is on two things:

- Showing you what cool things you can do with JavaScript
- Getting you to the level of **copy-paste-edit development**

You won’t learn everything about JavaScript syntax in this course. Instead, we want you to be able to find snippets of code online, copy them into your project, and adapt them to your website. That means you have to know a little bit about how the code works, but you don’t need to know every detail.

**Don’t stop there!** After you build some cool sites by copying and pasting code, you should take the time to learn more about how the language works! There’s lots of great JavaScript learning materials that you can use to build deeper knowledge.

## Practice: The Cat That Disappeared

<aside>

🐈 Practice hiding elements by making the cat disappear after a few seconds.

[Access the exercise here](TODO link to repl)

</aside
