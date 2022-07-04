# CSS Selectors and Properties

*Estimated Time: 30 minutes*

---

You were previously introduced to CSS. Let’s revisit what you learned, and dive deeper into CSS Selectors.

<aside>


📺 Check out this [Code.org](http://Code.org) video on CSS

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.youtube.com/embed/EP9QMdoXvXE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

# CSS

CSS controls the appearance of HTML elements.

CSS is made of **rules** that look like this:

```css
p {
	color: red;
}
```

Here’s the result:

![BCDF355C-419C-4670-A99D-D70D1D5C78AB-655-0000EDA4FBD29F61.png](../learning-with-kibo/intro-to-web-development/bcdf355c-419c-4670-a99d-d70d1d5c78ab-655-0000eda4fbd29f61.png)

This CSS sets the color of the text within paragraphs to red. Below is the HTML
    
```html
<p>This is a paragraph. It has an <a href="https://example.com">Example Link</a> inside the paragraph. </p>
```
    

## Linking CSS

<aside>


📺 Check out this [Code.org](http://Code.org) video on how to link your CSS

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe width="100%" height="415" src="https://www.youtube.com/embed/VgBVKlpLqsE" title="Linking your CSS" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

Here's a recap on how to link CSS to your webpage.

- We’ll put our styles in a CSS file, usually called `style.css`. 
- In the HTML file, we’ll link to `style.css` using the `<link>` tag:
	```html
	<link href="style.css" rel="stylesheet" type="text/css" />
	```
- The `href` attribute of the `link` says where to find the CSS file
- The `rel` attribute of the `link` says what the relationship is to the page — for us, always `stylesheet`.
- The `type` attribute of the `link` says that the kind of file it is — always `text/css` for us.

## Practice: Link the stylesheet

<aside>

👉🏿 Try adding the `<link>` tag to this HTML page so that the styles are connected.

👉🏿 Use the link below to attempt the practice exercise

[https://replit.com/team/web-foundations-july-2022/Practice-Link-the-Stylesheet](https://replit.com/team/web-foundations-july-2022/Practice-Link-the-Stylesheet)

</aside>

## CSS Syntax

![Untitled](../learning-with-kibo/intro-to-web-development/untitled-2.png)

Each rule has a **selector** and a list of **declarations.** The selector says which elements should get these styles.

> The selector is `p`, so all the `<p>` elements get the styles.

A declaration is a **property** and a **value.**

> The property is `color` and the value is `red`

# CSS selectors

When you write CSS, the steps often go:

1. Try getting the styles right in the DevTools
2. Pick what elements to style
3. Write the style rules

Step 2 is “Pick what elements to style”. Selectors say **which elements** will get **which styles**. 

<p class="codepen" data-height="300" data-default-tab="css,result" data-slug-hash="mdxJNxP" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/mdxJNxP">
  css selectors intro</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

The selectors in this example are `p` and `a`.

<details>
<summary>
<strong>Question:</strong> Which elements get <code>color: red;</code>?
</summary>

**Answer:** The paragraphs, because of the `p` selector.
</details>

<details>
<summary>
<strong>Question:</strong> Which elements get <code>color: green;</code>?
</summary>

**Answer:** The link, because of the `a` selector.
</details>

### How selectors work

Selectors pick all the elements that match, and the style rule applies to all those elements.

There are lots of kinds of selectors. We’ll focus on the three most common selectors (Element Selectors, Class selectors, and id selectors) and how to combine selectors. Then, you can practice with more advanced selectors too!

### Element Selectors

From the example above, `p` and `a` are **Element Selectors.** They select all the elements that are that type.

<details>
<summary>
<strong>Question:</strong> How would you select all the images on a page and give them <code>height: 100px</code>?
</summary>

**Answer**: The selector would be `img`, and the full CSS rule would be

```css
img {
	height: 100px;
}
```

</details>

### class selectors

When an element has a class attribute, there’s special syntax to select them.

<p class="codepen" data-height="300" data-default-tab="css,result" data-slug-hash="yLKNmEE" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/yLKNmEE">
  class selectors demo</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

The selector `.cool-paragraph` selected the second paragraph, because it had a matching `class` attribute. The syntax is `.` plus the name of the class, in this case `cool-paragraph`.

You can have lots of elements with the same class. There can be lots of `cool-paragraph`s.

### id selectors

An id selector selects elements that have a matching `id`. It’s similar to a class selector, just a slightly different syntax.

<p class="codepen" data-height="300" data-default-tab="css,result" data-slug-hash="vYROoaL" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/vYROoaL">
  id selector demo</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

`#paragraph-6` picks the paragraph with the id `paragraph-6`. The syntax is a `#` plus the id (like `paragraph-6`). There’s only supposed to be one element with any particular id.

## Combining selectors

You can select more than one element with a combined selector.

The easiest way is to list multiple selectors, separated by commas.

```css
p, a, .cool-text {
	color: hotpink;
}
```

All paragraphs, links, and elements with the `cool-text` class will be selected.

### Combining Selectors

If you put two selectors together, you select elements that match both selectors. You can select “the paragraphs that also have the class `cool-paragraph`” by combining the `p` and `.cool-paragraph` selectors like `p.cool-paragraph`.

There are other **CSS** **combinators** that let you pick elements that have relations like “all the links inside of list items” or “paragraphs right after second-level headings”. 

Combinator is a fancy word for “thing that combines things”.

Here’s some examples:

- `.cool-paragraph strong` selects all the `<strong>`elements inside elements with the `cool-paragraph` class.
- `h2 + p` selects the paragraphs that immediately follow a level 2 header

You don’t need to memorize all the combinators.

If you want to see them and browse more examples, check out the [MDN page on CSS Selectors](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Selectors).

<aside>

📺 A video recap of CSS and Selectors

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe width="100%" height="415" src="https://www.youtube.com/embed/XPv4EeB0PJ8?start=38" title="CSS and Selectors" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>

## Practice: Select the Elements

<aside>

👉🏿 Practice the selectors using the Replit link below

👉🏿 In `style.css`, fill in the selectors for each of the rules so that the styles work

[https://replit.com/team/web-foundations-july-2022/Practice-Select-the-Elements](https://replit.com/team/web-foundations-july-2022/Practice-Select-the-Elements)

</aside>

## Practice: CSS Diner

<aside>

🍽️  For more practice with CSS selectors, try out [CSS Diner](https://flukeout.github.io/).

There are 30 short exercises to practice selecting the plates, the food, or the table.

**Try to get to at least Level 10!**

</aside>