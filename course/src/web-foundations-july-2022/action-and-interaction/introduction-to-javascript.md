# Introduction to javascript

*Estimated Time: 1 hour*

---

As you’ve heard lots of times by now, HTML is for the content and structure of the page, CSS is for styling how the elements should appear, and JavaScript is for adding interactivity. Now that you’ve learned lots of HTML and CSS, it’s time for some JavaScript.

<aside>


⚠️ JavaScript is a deep topic.

You’ll learn a little bit of JavaScript in the next few lessons, enough to add some basic interactivity to your pages. There’s way more JavaScript to learn later, which we aren’t covering here. After this course, you can find other resources to pursue further learning in JavaScript.

JavaScript is also **confusing**. Don’t be surprised if you get stuck on the syntax or logic. Ask for help!

</aside>

## About JavaScript

JavaScript is a different kind of language than HTML and CSS.

HTML and CSS happen “all at once”. The browser shows the whole HTML page, with all the styles applied. The order of elements in HTML determines the structure of page content, and the order of CSS determines precedence, but there is no notion of “time”.

JavaScript happens step by step. Each line runs, one after the other. Instead of thinking in terms of the structure of the page, instead you think about steps for the computer to follow, like a recipe.

### JavaScript in 14 minutes

<aside>


👉🏿 **Try it**: JavaScript in 14 minutes

For a quick overview of the main concepts in JavaScript, try [JavaScript in 14 Minutes](https://jgthms.com/javascript-in-14-minutes/).

- Follow the link to [https://jgthms.com/javascript-in-14-minutes/](https://jgthms.com/javascript-in-14-minutes/)
- Read the instructions and click each link to learn the basics of datatypes, functions, variables, conditionals, and loops.
- Don’t expect to memorize all the concepts now! You’ll get some chances to practice and re-learn later on.
</aside>

## DevTools Console

You’ve been using the DevTools for debugging HTML and CSS for the entire class. Now that you’re learning JavaScript, you can use a whole new part of the DevTools: the Console.

Like you learned in the exercise above, you can open the console with a keyboard shortcut. You can also inspect an element, then click to the Console tab. Open the console now, on this page.

### Log messages

The browser can display information from JavaScript code to the console. You may see some **log messages** when you open the Console, from the JavaScript that’s already running on the page.

You can log messages to yourself with JavaScript using `console.log("the message you want to say")`. Try it now!

### Error messages

Another thing you might see in the console are **error messages.** They usually display in red, and tell the reader what has gone wrong on the page.

You can see an error if you type something that isn’t valid JavaScript, like `melon pizza`. For me, that shows the error message `Uncaught SyntaxError: Unexpected identifier`. Try it out in the console to see if you get the same error.

### A playground for code

The console isn’t just for log and error messages. Just like the Style tab and Elements panel let you try out different CSS properties and HTML, the Console lets you try out JavaScript code and see the result.

Just like the Elements and Style tab, the Console doesn’t make any permanent changes to the page. You can’t break anything, just by typing the wrong JavaScript in. You can always refresh the page.

By the same token, if you *want* your changes to be saved, you’ll need to copy what you write into a JavaScript file like `script.js` and run it from there.

So far, you might not know much JavaScript that you could run in the Console — you’ve seen how to make an error, but that’s not very useful. You’ve seen how to log a message, which could be useful eventually, but doesn’t do a whole lot yet. 

In the activity above, you also learned `alert`, which shows a message on the page. That’s kinda cool! Perhaps even more useful for you, the Console can act like a built-in calculator.

Try entering the following lines of code into the Console one by one. Press the Enter key after each line, and see the result:

```jsx
11 * 45

6000 - 440 - 31 - 195

2 ** 10

18 / 3
```

We won’t do a whole lesson on numbers in JavaScript now, but you can start to use the Console as a calculator that comes with you to every webpage!

## Selecting Elements

As you’ve learned, webpages are made of HTML Elements. For JavaScript to do things with the page, it has to be able to interact with those elements.

From your console, enter the following snippet:

```jsx
document.querySelector('div.notion-topbar')
```

That selects the HTML element with the top bar of content, showing the breadcrumb menu with links.

### `querySelector`

Take a closer look at the part in the parentheses: `'div.notion-page-block'`. That’s oddly familiar...

It’s a CSS Selector! JavaScript uses CSS Selectors to select elements on the page.

<aside>


✍🏾 The function `querySelector` asks the page for the first element that matches the CSS selector you give it.

</aside>

You write `document.querySelector` to find elements inside the `document`. If you have any other HTML element in JavaScript, you can look for elements inside it instead.

### Inspecting and changing properties

What do you see when you run this snippet?

```jsx
document.querySelector('div.notion-topbar').innerText
```

- Result
    
    When I run that snippet, I see the text that’s in the top bar.
    

`.innerText` is a **property** of an element. With JavaScript, you can *inspect* properties to see what the current values are. 

You can also *change* properties. Run this snippet:

```jsx
document.querySelector('div.notion-topbar').style = "background-color: lavender"
```

Look at the top bar. You changed the color, using JavaScript!

## Adding and removing classes

You could change other properties using JavaScript. However, JavaScript isn’t a great language for styling. CSS is much better. If you wanted to add some more styles using JavaScript, you would have to do something like:

```jsx
document.querySelector('div.notion-topbar').style = "background-color: lavender; padding: 12px; font-family: monospace"
```

It works... but it’s not as nice as writing styles in CSS.

Instead of changing CSS values with JavaScript directly, instead you can add and remove **classes**. You’ve seen the `class` attribute in HTML before, and used the `.class` selector in CSS to style all the matching elements. With JavaScript, classes get a whole new power.

In your CSS file, you could have something like:

```jsx
.retro {
	background-color: lavender;
	padding: 12px;
	font-family: monospace;
}
```

Which has the same styles as the snippet above.

Then in your JS code, you could write:

```jsx
document.querySelector('div.notion-topbar').classList.add('retro')
```

To add the `retro` class and style the element. This won’t work right now, since you don’t control the CSS for the Notion page, but it will work for your own sites.

You can also remove classes too:

```jsx
document.querySelector('div.notion-topbar').classList.remove('retro')
```

## Copy-Paste-Edit Development

We haven’t talked much about JavaScript syntax. The JavaScript in 14 minutes activity introduced a ton of terms that we haven’t covered, and then we moved along to selecting elements and changing their appearance with JavaScript.

It’s very normal at this point to be confused about the vocabulary, the terms, the syntax, and how all of it actually works. Our focus right now is on two things:

- Showing you what cool things you can do with JavaScript
- Getting you to the level of **copy-paste-edit development**

You won’t learn everything about JavaScript syntax in this course. Instead, we want you to be able to find snippets of code online, copy them into your project, and adapt them to your website. That means you have to know a little bit about how the code works, but you don’t need to know every detail.

**Don’t stop there!** After you build some cool sites by copying and pasting code, you should take the time to learn more about how the language works! There’s lots of great JavaScript learning materials that you can use to build deeper knowledge.

## Practice: The Cat That Disappeared

<aside>


🐈 Practice hiding elements by making the cat disappear after a few seconds.

Access the exercise here:  <div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://replit.com/team/tk5-web/Practice-The-Cat-that-Disappeared" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div> or below

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://replit.com/team/tk5-web/Practice-The-Cat-that-Disappeared" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>