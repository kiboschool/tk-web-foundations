# Bonus: More Styling and CSS

We skipped over tons of topics in the lessons. This section has some further,
optional information that might be useful.

## Responsive Design

Designing for different screen sizes is hard! MDN has a few guides on strategies for responsive design that you can read.

- [Responsive Design](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Responsive_Design) gives an overview.
- [Responsive Images](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Responsive_images) details how to include images that work well across screen sizes
- [Media Queries](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Media_queries) are a core tool you can use to adapt to different screen sizes.

## CSS Units

So far, we’ve used pixels (`px`) as the units in our examples. CSS has lots of different kinds of units that are useful in different situations.

Pixels are not the only units! CSS actually has more than 10 units you can use. For now, the only one we’ll mention is `em`. `1em` is the same as saying “the current font size”. So, to make text three quarters the size of the surrounding text, you could use `font-size: 0.75em`.

You can also specify values in terms of percentages. An element with `width: 50%` will try to take up 50% of the width of its parent element.

The [MDN page on CSS values and units](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Values_and_units) goes into depth about the different units available for different values.

## Overflow and Scrolling

Content doesn’t always fit within the width and height of the containing element.

What happens to that overflowing content? It might scroll horizontally or vertically, it might spill out of the containing box, or it might get hidden.

Read more on [MDN about handling overflowing content](https://developer.mozilla.org/en-US/docs/Learn/CSS/Building_blocks/Overflowing_content).

## The `margin: auto` trick

Setting `margin: auto` is a one way to center an element horizontally. It sets the left and right margins to whatever is needed to center the element. It doesn’t work for vertical alignment.

## z-index

When CSS boxes overlap, which one shows up on top?

The `z-index` property decides.

The name "z-index" comes from thinking about the screen's x and y dimensions. If
x and y are left/right and up/down directions on the screen, then the ‘z’
dimension is "popping out of" and "going into" the screen.

</details>

`z-index` is tricky to use, in part because it’s hard to see and think about. To learn more about it, check out the [MDN reference on z-index](https://developer.mozilla.org/en-US/docs/Web/CSS/z-index), and the MDN series on [Understanding CSS z-index](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Positioning/Understanding_z_index).

## Further Reading: Web.Dev's Learn CSS

> If you’ve finished these resources, and still want to learn more about CSS,
check out **[Learn CSS](https://web.dev/learn/css/)** from web.dev.
>
> It’s a free resource from Google and others that covers CSS topics in even more detail.
