# 1.4 CSS Selectors and Properties

*Estimated Time: 30 minutes*

---

You saw some CSS in Lesson 0. Let’s revisit what you learned, and dive deeper into CSS Selectors.

<aside>
📺 Check out this [Code.org](http://Code.org) video on CSS

</aside>

[https://www.youtube.com/watch?v=EP9QMdoXvXE](https://www.youtube.com/watch?v=EP9QMdoXvXE)

# CSS

CSS controls the appearance of HTML elements.

CSS is made of **rules** that look like this:

```css
p {
	color: red;
}
```

Here’s the result:

![BCDF355C-419C-4670-A99D-D70D1D5C78AB-655-0000EDA4FBD29F61.png](../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/0%203%20Intro%20to%20Web%20Development%2000d88c83ec55498abd8cdd76bc0e87be/BCDF355C-419C-4670-A99D-D70D1D5C78AB-655-0000EDA4FBD29F61.png)

This CSS sets the color of the text within paragraphs to red.

- (**Here’s the HTML - click to open)**
    
    ```html
    <p>This is a paragraph. It has an <a href="https://example.com">Example Link</a> inside the paragraph. </p>
    ```
    

## Linking CSS

We’ll put our styles in a CSS file, usually called `style.css`. 

In the HTML file, we’ll link to `style.css` using the `<link>` tag:

```html
<link href="style.css" rel="stylesheet" type="text/css" />
```

- The `href` attribute of the `link` says where to find the CSS file
- The `rel` attribute of the `link` says what the relationship is to the page — for us, always `stylesheet`.
- The `type` attribute of the `link` says that the kind of file it is — always `text/css` for us.

## Practice: Link the stylesheet

<aside>
👉🏿 Try adding the `<link>` tag to this HTML page so that the styles are connected.

</aside>

[https://replit.com/team/tk5-web/Practice-Link-the-Stylesheet](https://replit.com/team/tk5-web/Practice-Link-the-Stylesheet)

## CSS Syntax

Each rule has a **selector** and a list of **declarations.** The selector says which elements should get these styles.

> In the example, the selector is `p`, so all the `<p>` elements should get the styles.
> 

A declaration is a **property** and a **value.**

> In the example, the property is `color` and the value is `red`
> 

![Untitled](../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/0%203%20Intro%20to%20Web%20Development%2000d88c83ec55498abd8cdd76bc0e87be/Untitled%202.png)

# CSS selectors

When you write CSS, the steps often go:

1. Try getting the styles right in the DevTools
2. Pick what elements to style
3. Write the style rules

Step 2 in the steps to writing CSS is “Pick what elements to style”. Selectors say **which elements** will get **which styles**. 

```html
<p>
	This is a paragraph. It has an 
	<a href="https://example.com">Example Link</a> 
	inside the paragraph.
</p>
<p>Here's a second paragraph</p>
```

```css

p {
 color: red;
}

a {
  color: green;
}
```

This is a paragraph. It has an [Example Link](http://example.com) inside the paragraph.

Here’s a second paragraph.

The selectors here are `p` and `a`.

- Which elements get `color: red;`? The paragraphs, because of the `p` selector.
- Which elements get `color: green;`? The link, because of the `a` selector.

### How selectors work

Selectors pick all the elements that match, and the style rule applies to all those elements.

There are lots of kinds of selectors. We’ll focus on the three most common selectors (Element Selectors, Class selectors, and id selectors) and how to combine selectors. Then, you can practice with more advanced selectors too!

### Element Selectors

From the example above, `p` and `a` are **Element Selectors.** They select all the elements that are that type.

- **Question:** How would you select all the images on a webpage, and make them all `height: 100px`?
    
    **Answer**: The selector would be `img`, and the full CSS rule would be
    
    ```css
    img {
      height: 100px;
    }
    ```
    

### class selectors

When an element has a class attribute, there’s special syntax to select them.

```html
<p>This is a paragraph.</p>
<p class="cool-paragraph">Here's a second paragraph</p>
```

```css
p {
  color: red;
}

.cool-paragraph {
	color: green;
}
```

This is a paragraph. 

Here’s a second paragraph

The selector `.cool-paragraph` selected the second paragraph, because it had a matching `class` attribute. The general syntax is `.` plus the name of the class (`cool-paragraph`).

You can have lots of elements with the same class. There can be lots of `cool-paragraph`s.

### id selectors

An id selector selects elements that have a matching `id`. It’s similar to a class selector, just a slightly different syntax.

```html
<p>Another paragraph.</p>
<p id="paragraph-6">Here's the sixth paragraph</p>
```

```css
#paragraph-6 {
	color: green;
}
```

Another paragraph.

Here’s the sixth paragraph

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

If you put two selectors together, you select elements that match both selectors*.* You can select “the paragraphs that also have the class `cool-paragraph`” by combining the `p` and `.cool-paragraph` selectors like `p.cool-paragraph`.

There are other **CSS** **combinators** that let you pick elements that have relations like “all the links inside of list items” or “paragraphs right after second-level headings”. 

Combinator is a fancy word for “thing that combines things”.

Here’s some examples:

- `.cool-paragraph strong` selects all the `<strong>`elements inside elements with the `cool-paragraph` class.
- `h2 + p` selects the paragraphs that immediately follow a second level 2

You don’t need to memorize all the combinators.

If you want to see them and browse more examples, check out the [MDN page on CSS Selectors](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Selectors).

## Practice: Select the Elements

<aside>
👉🏿 Practice the selectors! In `style.css`, fill in the selectors for each of the rules so that the styles work.

</aside>

[https://replit.com/team/tk5-web/Practice-Select-the-Elements](https://replit.com/team/tk5-web/Practice-Select-the-Elements)

## Practice: CSS Diner

<aside>
🍽️ For more practice with CSS selectors, try out [CSS Diner](https://flukeout.github.io/).

There are 30 short exercises to practice selecting the plates, the food, or the table. **Try to get to at least Level 10!**

</aside>

---

<aside>
<img src="../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/man-in-hike.png" alt="../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/man-in-hike.png" width="40px" /> Next up: [A Taste of Javascript](1%205%20A%20Taste%20Of%20JavaScript%20511b1d7413254e63ac8e6d61cd384e9c.md)

</aside>