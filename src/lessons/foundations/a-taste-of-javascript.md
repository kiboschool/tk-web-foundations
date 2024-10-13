# A Taste of JavaScript

JavaScript lets you control the **action** on a page. It’s also a super powerful programming language you can use for all kinds of other applications.

Today, you’re just going to see how to link a JavaScript file to your HTML.

## Script tag

We write our JavaScript in separate files, which in this course we’ll name `script.js`. To connect the JavaScript to the HTML page, we’ll use a `<script>` tag.

```html
<script src="script.js"></script>
```

We use the `src` attribute to say where to find the JavaScript file.

**Note:** It’s called `src` for `<script>` tags. `link` and `a` tags have `href`, which is similar. If you mix them up, try switching to the other one.

We usually place the script tag at the end of the `<body>` tag, so that the rest of the page has loaded before the script is run.

## Practice: Link the JavaScript using the `<script>` tag

👉🏿 Use the link below to attempt the practice exercise

Add the `<script>` tag to connect the JavaScript file to the HTML page.

[https://replit.com/team/tk10-wf/Practice-Link-the-Script](https://replit.com/team/tk10-wf/Practice-Link-the-Script)

## Deeper Connections: CSS Selectors in JS

<aside>

👀 Take a look at the JavaScript file `script.js` in the Practice.

</aside>

Look at all the places it uses CSS Selectors:

```js
document.querySelector('#gross')
document.querySelector('.reaction')
document.querySelector('#yum')
```

`#gross`, `.reaction`, and `#yum` are all CSS Selectors! When you learn to use JavaScript to create interactions, you’ll still use concepts from HTML and CSS.

The same CSS selectors that you use for styles will also let you pick HTML elements in your JS code.
