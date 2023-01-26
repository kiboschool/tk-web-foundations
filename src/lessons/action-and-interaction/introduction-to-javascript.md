# Introduction to javascript

<div style="position: relative; padding-bottom: 56.25%; height: 0; margin: 20px 0px;"><iframe src="" title="YouTube video player" frameborder="0"  allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background: url(./actions/jav.png); background-size: cover;"></iframe></div>

As you’ve heard lots of times by now, HTML is for the content and structure of the page, CSS is for styling how the elements should appear, and JavaScript is for adding interactivity. Now that you’ve learned lots of HTML and CSS, it’s time for some JavaScript.

<aside>


⚠️ **JavaScript is a deep topic.**

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

You can log messages to yourself with JavaScript using

`console.log("the message you want to say")`. Try it now!

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

```javascript
11 * 45

6000 - 440 - 31 - 195

2 ** 10

18 / 3
```

We won’t do a whole lesson on numbers in JavaScript now, but you can start to use the Console as a calculator that comes with you to every webpage!

## Practice

Open up the JavaScript console, and practice entering some expressions, such as:
- calculations with numbers, like above
- using `alert` to show a popup message
- using `console.log` to show a message in the console
- typing something that is not valid JavaScript, to see what an error message
    looks like