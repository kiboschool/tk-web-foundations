# Responding to Events in Javascript

An interactive page changes when the user takes an action. In the last lesson, you learned how to change things using JavaScript. The missing piece is to be able to make those changes in response to what the user does.

## Listening For Events

Check out the demo below. Click the button to see it in action, and be sure to look at the code.

<p class="codepen" data-height="300" data-default-tab="js,result" data-slug-hash="qBKrJpb" data-editable="true" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/qBKrJpb">
  Event Listener Demo</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

### `addEventListener`

```javascript
button.addEventListener('click', function() {
	console.log("clicked");
})
```

_Events_ happen when the user does something, like click on the button.

`addEventListener` lets  you set up code to run when an event happens. JavaScript will run the code between the curly braces `{}` when the button is clicked.

<details><summary>Further Reading: Events</summary>

The [MDN guide on Events](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/Events) gives more details and explanation of how events work.

</details>

## Practice: Hide on click

<aside>

🙈 The bunny is quite timid. It runs away when someone is near. Or, at least, it should! Help the bunny hide with an Event Listener

[Access the exercise here](https://replit.com/team/web-foundations-july-2022/Hide-on-click)

</aside>

<details>
<summary><strong>Solution: Hide on click</strong></summary>

If you get stuck, you can watch this video to see how to solve the exercise.

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.youtube.com/embed/za3tQLEoWLk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

</details>

### Further reading: Available events

You can listen to more events than just `'click'`. MDN has [a reference page listing all of the available events](https://developer.mozilla.org/en-US/docs/Web/Events). There are a lot!

## Debugging

Here's some tricks help when things don't work as planned:

- **Make small changes**, then run the code to see what’s changed
- **Read the error** If there’s an error message, read the message. If you don't understand it, try to copy and paste the error message into Google, or ask the community.
- **Check your syntax** A lot of errors happen because of missing parentheses and brackets, or because of typos.
- **Isolate the problem**. Try removing code until the problem is gone, then adding things back piece by piece to see which piece was wrong.

These strategies help with JavaScript in particular:

- **Use the console**: Try individual pieces of code in the console to confirm that they work as you expect them to
- **Use `alert` and `console.log`** to show values at different points in your code, or to make sure that the code is actually running
- **Build piece by piece**. The exercises walk you through solutions step by step. As you get more practice, try planning the steps yourself, then writing the code.

### Further reading: Debugging

The [MDN guide on Debugging](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_went_wrong) has more details about how to deal with syntax and logic errors.
