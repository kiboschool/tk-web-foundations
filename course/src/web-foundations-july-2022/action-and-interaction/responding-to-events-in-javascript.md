# Responding to events in javascript

*Estimated Time: 1 hour*

---

An interactive page changes when the user takes an action. In the last lesson, you learned how to change things using JavaScript. The missing piece is to be able to make those changes in response to what the user does.

## Listening For Events

Click the link below to check out the demo. Run the program, and be sure to also look at the code.

> [Access the demo here](https://replit.com/@kibocurriculum/Event-Listener-Demo#script.js)

### `addEventListener`

```javascript
button.addEventListener('click', () => {
	console.log("clicked");
})
```

Events happen when the user does something. `addEventListener` is how you set up code to run when an event happens. JavaScript will run the code between the curly braces `{}` when the button is clicked.

<details><summary>Further Reading: Events</summary>

The [MDN guide on Events](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/Events) gives more details and explanation of how events work.

</details>

## Practice: Hide on click

🙈 The bunny is quite timid. It runs away when someone is near. Or, at least, it should! Help the bunny hide with an Event Listener

<aside>

[Access the exercise here](https://replit.com/team/web-foundations-july-2022/Hide-on-click)

<details>
<summary><strong>Solution: Hide on click</strong></summary>

If you get stuck, you can watch this video to see how to solve the exercise.

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.youtube.com/embed/za3tQLEoWLk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

</details>

</aside>


### Further reading: Available events

You can listen to more events than just `'click'`. MDN has [a reference page listing all of the available events](https://developer.mozilla.org/en-US/docs/Web/Events). There are a lot!

## Debugging

Things don’t always go as planned when writing code. When writing HTML and CSS, you might have learned some tricks that helped you solve problems when things weren’t working as planned. Here’s some tricks that work in general:

- Make small changes, then run the code to see what’s changed
- If there’s an error message, read the message. Try to copy and paste the error message into Google.
- Pay close attention to the syntax. A lot of errors happen because of missing parentheses and brackets, or because of typos.
- Isolate the problem. Try removing code until the problem is gone, then adding things back piece by piece to see which piece was wrong.

Now that you’re writing JavaScript, there are new kinds of bugs, and new tools for debugging them. Here are some strategies that can help:

- Try individual pieces of code in the console to confirm that they work as you expect them to
- Use `alert` and `console.log` to show values at different points in your code, or to make sure that the code is actually running

It’s even more important that you build solutions piece by piece. The exercises and practice activities are intended to walk you through the pieces step by step. As you get more practice, try planning those steps yourself, then writing code to complete them.

### Further reading: Debugging

The [MDN guide on Debugging](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_went_wrong) has more details about how to deal with syntax and logic errors.
