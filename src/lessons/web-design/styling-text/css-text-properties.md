# CSS Text Properties

## Typography

The style and appearance of text on the page is called **Typography.**

Using CSS, we can control the appearance of the text, including:

- size
- spacing
- line length
- color

Using these properties, we can make the text look good!

You can use CSS to control these properties. The properties are:

- `font-size`
- `line-height`
- `max-width` (for controlling the length of each line)
- `color` and `background-color`

<aside>

📘 In this lesson, we refer several times to Matthew Butterick’s book [Practical Typography](http://practicaltypography.com). It’s great further reading material, if you are curious to learn more about typography.

</aside>

## Practice: Good Text, Bad Text

<aside>

🔤 Practice using the properties to style text.

Follow the instructions to style one paragraph of the text to look good and
the other to look bad! You can refer to the Key Rules below for help on styling
the good text.

[Access the exercise here](https://replit.com/team/tk8-web-foundations/Practice-CSS-Text-Properties)

</aside>

## Key rules for Typography

- Point size should be 15-25 pixels
- Line spacing should be 120–145% of the point size
- Line length should be 45–90 characters (including spaces)
- Less color is more effective


### Body text point size should be 15-25 pixels

`font-size` is the relevant CSS property, so the recommendation is body text between `font-size: 15px` and `font-size: 25px`.

```css
body {
    font-size: 18px;
}
```

### Line spacing should be 120–145% of the point size

`line-height` controls how tall each line is. You can set it as a multiple of the `font-size` by using a value without units, like `1.4`. Use between `line-height: 1.2` and `line-height: 1.45`.

```css
body {
    line-height: 1.35;
}
```

### The average line length should be 45–90 characters

Line length is determined by the width of the parent element. The `max-width` on the parent element is often easiest way to control the average line.

```css
body {
    max-width: 500px;
}
```

### Less Color is more effective

The `color` property in CSS sets the color of text. The `background-color`
property sets the background color. Usually, the best choice is black or dark
gray text, on a white or near-white background.

The goal is to create *contrast* between the background color and the text
color. Dark text on a dark background is hard to read. So is light text on a
light background.

```css
body {
    background-color: #eee; /* near-white */
    color: #333; /* dark grey */
}
```

### Summary

Combining all the rules above, here's a default style for body text:

```css
body {
    font-size: 18px;
    line-height: 1.35;
    max-width: 500px;
    background-color: #eee; /* near-white */
    color: #333; /* a dark grey */
}
```

There's lots of wiggle room! You don't need to use _exactly_ these rules.

## Further Exploration

### What makes good Typography?

Butterick’s page [What is good typography?](https://practicaltypography.com/what-is-good-typography.html) says

_"Good typography reinforces the meaning of the text."_

There's lots to learn about what makes typography good.

<details><summary><strong>Read more: Good Typography</strong></summary>

Different purposes call for different text styles.

Still, there are some fundamentals that apply across most sites.

👉🏿 Read [Typography in Ten Minutes](https://practicaltypography.com/typography-in-ten-minutes.html). Make a note of the terms you don’t understand. There’s a lot to learn about making text look good, but this is a good starting point.

For each of the terms you don’t understand, try doing a quick google search to learn more about that term. You might not totally understand everything at first, but it’s a good habit to try to do a search when you encounter a term you don’t know.

* The [summary of key rules](https://practicaltypography.com/summary-of-key-rules.html) from Practical Typography has more rules for improving text.
* For more on color, see [Butterick’s Practical Typography, Color](https://practicaltypography.com/color.html)

</details>

### Text and Font Styling

There's also lots more to learn about the CSS properties for text styling.

<details><summary><strong>Read more: Text and Font Styling</strong></summary>

The [Text and Font Styling](https://developer.mozilla.org/en-US/docs/Learn/CSS/Styling_text/Fundamentals) page on MDN has more detail about these properties and other properties you can use to style text. Read about:

- Text `color`
- Values and Units
- Styling with `font-weight`, `text-transform`, `text-decoration`, and `text-shadow`
- Alignment and spacing with `text-align`, `letter-spacing`, and `word-spacing`

It also links to many other pages about styling text. **There’s a ton to explore**.
</details>
