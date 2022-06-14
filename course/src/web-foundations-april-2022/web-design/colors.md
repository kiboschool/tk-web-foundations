# Colors

*Estimated Time: 30 minutes*

---

# Colors in CSS

CSS has lots of properties that deal with color. The primary ones you’ll deal with are 

- `color` for text color.
- `background-color` for the background color of any element.
- `border-color` for the color of a border.
- **Further Exploration**: More color properties
    
    There are tons more CSS properties that use colors. Try searching MDN for any of these that interest you:
    
    - `box-shadow`
    - `outline-color`
    - `text-decoration-color`
    - `text-emphasis-color`
    - `text-shadow`
    - `caret-color`
    - `column-rule-color`

## CSS Color Values

In our examples, we’ve mostly used named color values, like `mediumorchid` and `darkslateblue` and `hotpink`. You may have also seen hex color values, like `#483d8b`, which specify the red, green, and blue color values for a color.

There are more ways to specify colors than named values and hex values!

As usual, MDN has your guide. The page on [color values](https://developer.mozilla.org/en-US/docs/Web/CSS/color_value) explains lots of other ways of specifying color values. 

# Choosing Good Colors

Choosing bad colors makes a site look amateurish. If you don’t have enough **contrast**, the text won’t be readable.

In the lesson on Styling Text, we said

> Your primary goal should be to create *contrast* between the background color and the text color. Dark text on a dark background is hard to read. So is light text on a light background.

Usually, the best choice is black or dark gray text, on a white or near-white background.
> 

This is still true.

### What colors do good sites have?

When designers create a color palette, they usually pick:

- a **background** color (usually an off-white, like `#eeeeee`).
- a **body font color** (usually a dark gray, like `#222222`).
- an **Accent** color, for links and highlights.
- a **Theme** color, or several related **theme colors,** for background colors for the header and footer.

<aside>


🎨 **Colors for [kibo.school](https://kibo.school)**

Kibo has a colorful homepage! But, if you actually count up the colors on the page, there aren’t that many. 

1. Try to count up all the colors on the page. How many are there?
2. What roles do the colors play? 
    - What color is the body text?
    - What color is the background?
    - What’s the theme color?
    - What’s the accent color?
</aside>

# A color palette

Even on a site that looks very colorful, there’s only a handful of colors.

Building a **color palette** means choosing just a few colors to use on your site.

<aside>


🎨 **Explore**: Build a palette on Coolors

[Coolors](https://coolors.co/generate) is a palette building tool. Try choosing some colors that work nicely together.

- Pressing the space bar shuffles the colors
- You can ‘lock’ a color you like by clicking the lock icon
</aside>

## **CSS Variables**

If you’re going to use the same value in lots of places in your CSS code, there’s a really useful tool: **CSS variables**. Here’s how they work.

```css
html {
  --theme: #D231A0;
}

a:hover {
  color: var(--theme);
  text-decoration-color: var(--theme);
}
```

This snippet creates a CSS variable called `--theme`, then uses it as the color for the text and the underline when a link is hovered. When the browser sees `var(--theme)`, it looks up the variable `--theme` and uses that value, `#D231A0`.

You can use CSS variables for any values — colors, sizes, numbers, percentages, or any other property values. CSS variables are really useful for color palettes, since it’s common to use the same colors again and again.

## Related colors

If you choose colors that look “related”, the site will look more natural.

How can colors be related? In this course, we won’t get too deep into color theory. Instead, here’s a couple activities that might help you think about choosing a family of related colors.

<aside>


📈 **Explore**: Trending Palettes

The Coolors site also lists [Trending Palettes](https://coolors.co/palettes/trending). Browse those collections.

- What connects those colors?
- Why are those palettes popular?
- What would happen if you changed one of the colors in a palette? How would the palette be different?
</aside>

## Practice: Color Method Game

<aside>


👀 Just like you practiced “seeing” visual design issues in the Can’t Unsee game, you can stand to learn more about colors.

[Color Method](https://color.method.ac/) is a color recognition game that helps you practice matching colors.

Try to match the color in the smaller circle by picking the same color on the wheel. The levels get harder and more interesting as you go!

</aside>

## Practice: Apply a palette

<aside>


🍲 Practice choosing a palette and applying it to a real page.

This recipe page has most of the styling done already, but it needs color.

**Access the repl here**: <div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://replit.com/team/tk5-web/26-Apply-a-Palette" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div> or below

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://replit.com/team/tk5-web/26-Apply-a-Palette" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

---

<aside>


<img src="../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/man-in-hike.png" alt="../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/man-in-hike.png" width="40px" /> Next up: [Practice](/web-foundations-april-2022/web-design/practice.md)

</aside>