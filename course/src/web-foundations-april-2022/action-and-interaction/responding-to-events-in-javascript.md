# Responding to events in javascript

*Estimated Time: 1 hour*

---

An interactive page needs to change when the user takes an action. In the last lesson, you learned how to change things using JavaScript. The missing piece is to be able to make those changes in response to what the user does.

## Listening For Events

Check out the demo below. Run the program, and be sure to also look at the code.

[https://replit.com/@kibocurriculum/Event-Listener-Demo#script.js](https://replit.com/@kibocurriculum/Event-Listener-Demo#script.js)

### `addEventListener`

```jsx
button.addEventListener('click', () => {
	console.log("clicked");
})
```

Events are how JavaScript knows when the user does something. `addEventListener` is how you set up code that will run when that event happens. JavaScript will run the code between the curly braces `{}` when the button is clicked.

- **Further Reading**: Events
    
    The [MDN guide on Events](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/Events) gives more details and explanation of how events work.
    

## Practice: Hide on click

<aside>


🙈 The bunny is quite timid. It runs away when someone is near. Or, at least, it should! Help the bunny hide with an Event Listener

Access the exercise here: <div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://replit.com/team/tk5-web/Hide-on-click" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div> or below

- **Solution: Hide on click**
    
    If you get stuck, you can watch this video to see how to solve the exercise.
    
    <div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.youtube.com/embed/za3tQLEoWLk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>
    
</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://replit.com/team/tk5-web/Hide-on-click" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

- **Further reading**: Available events
    
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

- **Further reading**: Debugging
    
    The [MDN guide on Debugging](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/What_went_wrong) has more details about how to deal with syntax and logic errors.
    

---

<aside>


<img src="../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/man-in-hike.png" alt="../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/man-in-hike.png" width="40px" /> Next up: [Practice](/web-foundations-april-2022/action-and-interaction/practice.md)

</aside>