# Bonus: More Styling

This section has some further, optional information that might be useful.

## The `margin: auto` trick

Setting `margin: auto` is a one way to center an element horizontally. It sets the left and right margins to whatever is needed to center the element. It doesn’t work for vertical alignment.

## Block and inline boxes

So, one thing that can be pretty confusing. All this box model stuff is true for most elements, but... some elements don’t actually work that way!

Elements like `<a>`, `<span>`, `<strong>`, and `<em>` are **inline elements**. They don’t go onto a whole new line like a `<p>` or a `<div>`. Inline elements get a slightly different version of the box model than **block** elements.

Here are the differences for **inline boxes** (from [MDN](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/The_box_model)):

- The box will not break onto a new line.
- The `width` and `height` properties will not apply.
- Vertical padding, margins, and borders will apply but *will not cause other inline boxes to move away from the box*.

Horizontal padding, margins, and borders will apply and will cause other inline boxes to move away from the box.

<details>
<summary><strong>Further Exploration: Block and Inline</strong>

MDN’s [page on the Box Model](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/The_box_model) explains more about block and inline boxes.

In the next lesson, you’ll also learn about the `display` property, which can control which kind of box an element has.

</details> 

## Practice: Block and Inline

<aside>

🟦 Practice using the `display` property and your new understanding of inline and block elements.

Access the repl here: 

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://replit.com/team/tk5-web/24-Practice-Block-and-Inline" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

## CSS Units

So far, we’ve used pixels (`px`) as the units in our examples. CSS has lots of different kinds of units that are useful in different situations.

Pixels are not the only units! CSS actually has more than 10 units you can use. For now, the only one we’ll mention is `em`. `1em` is the same as saying “the current font size”. So, to make text three quarters the size of the surrounding text, you could use `font-size: 0.75em`.

You can also specify values in terms of percentages. An element with `width: 50%` will try to take up 50% of the width of its parent element.

### Further Exploration: CSS Units

The [MDN page on CSS values and units](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Values_and_units) goes into depth about the different units available for different values.
