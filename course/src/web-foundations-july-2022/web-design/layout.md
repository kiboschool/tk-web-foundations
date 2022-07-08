# Layout

*Estimated Time: 30 minutes*

---

With the Box Model, you can control the **size and** **spacing in** **and around** elements. But, the box model doesn’t let you position elements anywhere you want.

In this lesson, you’ll learn about laying out the elements on the page.

![Examples of page layouts, using colored boxes to suggest elements arranged around a web page.](/web-foundations-april-2022/web-design/layout/layout.png)

Examples of page layouts, using colored boxes to suggest elements arranged around a web page.

<aside>


🚧 Layout can be time-consuming and difficult. Be patient!

</aside>

## CSS Layout

Layout means controlling the arrangement of the elements on the page.

It’s challenging because it involves the interactions between lots of different properties: the sizes of the elements (per the Box Model), their nesting relationships with each other, and lots of other CSS properties.

We won’t cover every detail about layout in this lesson. We’ll focus on four key concepts:

- Understanding Normal Flow
- The `display` property
- Flexbox
- Positioning with `position`

There are tons more things to learn about layout, but with these four concepts, you should be able to achieve most layouts you want.

- **Further Exploration**: MDN Layout Overview
    
    In this lesson, we’re leaving out things you might want to learn eventually. Left-out topics include:
    
    - Float
    - Table layout
    - Multi-column layout
    - Responsive design and media queries
    
    Check out [MDN’s Introduction to CSS Layout](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Introduction) for an overview of layout topics.
    

## Normal Flow

Before changing CSS layout properties, it’s key to know how things show up on the page by default.

In **Normal Flow**, block elements stack on top of each other, each on its own line.

**Block elements** fill up 100% of the available width. Usually, that’s the width of the screen. They are as tall as their content.

**Inline elements**, ****like links and spans, are laid out inside the block elements, and don’t go on new lines.

Read more about [Normal flow on MDN](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Normal_Flow).

![Normal flow. Elements are 100% width and stack on each other.](/web-foundations-april-2022/web-design/layout/normal-flow.png)

Normal flow. Elements are 100% width and stack on each other.

## Display

The `display` property controls two things:

- Whether an element is treated as a block or an inline element in the flow (the **outside** display)
- How the elements **inside** the element will flow (the **inside** display)

### `display: none;`

There’s a special display value that hides content.

This is particularly useful if you want something not to show up, like if it should only appear when a button is clicked.

It doesn’t have inside or outside display values.

### Outside Display

**Block** elements get line breaks before and after the element, so they show up on their own line.

You can set an element to `display: block;` to make it act as a block.

Elements like `<p>`, `<div>`, `<h2>`, and `<section>` all have `display: block;` automatically, so you don’t need to set it.

![block-elements.png](/web-foundations-april-2022/web-design/layout/block-elements.png)

**Inline** elements don’t get line breaks, so show up inline with other elements.

You can set elements to `display: inline;` to force them to show inline with other elements.

Elements like `<a>`, `<em>`, and `<strong>` automatically have `display: inline;`, so you don’t need to set it yourself.

![inline-elements.png](/web-foundations-april-2022/web-design/layout/inline-elements.png)

### Inside Display

So far, we’ve only talked about Normal flow (elements stack on top of each other, or show up inline). It’s possible to lay out some sites using only normal flow, but there are other flow modes that make creating certain layouts much easier.

When you set `display` to certain other values, you change how the elements **inside** that element get displayed. Instead of Normal flow, they flow some other way.

The only other real flow mode we’re going to explore is `flex`.

- **Further Exploration**: Inside Display values
    
    The [MDN reference on the CSS display property](https://developer.mozilla.org/en-US/docs/Web/CSS/display) lists comprehensive information about what the possible display values are. You can get by without knowing most of them, but the possible inside display values are `flow`, `flow-root`, `table`, `flex`, `grid`, and `ruby`.
    

## Flexbox

<aside>


🎥 **Video: Learn Flexbox**

This video from Web Dev Simplified shows the main ideas of Flexbox.

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.youtube.com/embed/fYq5PXgSsbE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

</aside>

If you set an element to `display: flex;`, it acts on the outside like a regular block element. On the inside, elements no longer follow Normal flow. Instead, that element becomes a **flex container**, and the items inside get laid out according to the flexbox rules.

The basic idea of Flexbox is that the items *flex* (expand) to fill additional space or shrink to fit into smaller spaces.

![The dashed line shows a container element. In Normal flow, there’s space below the block elements inside the container. In a Flexbox, the elements grow to fill the whole space.](/web-foundations-april-2022/publishing-and-sharing/domains-and-hosting/untitled.png)

The dashed line shows a container element. In Normal flow, there’s space below the block elements inside the container. In a Flexbox, the elements grow to fill the whole space.

Flexbox gives you lots of tools to change the way the elements move to fill the space.

You can change:

- The direction of the box (columns or rows)
- The space between items
- The horizontal and vertical alignment of the elements within the box
- Whether or not elements will wrap around if they get crowded
- Which elements grow and shrink, by how much

![Untitled](/web-foundations-april-2022/publishing-and-sharing/domains-and-hosting/untitled-1.png)

- **Further Reading**: Flexbox
    
    [MDN’s page on Flexbox](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Flexbox) goes into great detail about the details of how Flexbox works.
    

## Practice: Flexbox Froggy

<aside>


🐸 Go to **[Flexbox Froggy](https://flexboxfroggy.com/)** and try to get through all the levels, to learn how to use the different flex properties.

It lets you learn the different flex properties by moving frogs onto lily pads. Very cute. 🐸

</aside>