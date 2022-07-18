# Styling Elements

_Estimated time: 20 minutes_

---

Most of the text on the page is body text, so most of the styling recommendations so far have been about body text. But, there’s other text on the page too!

Let's see how to style different kinds of elements.

### Headings

Like you learned in Week 1, you can use the `<h1>` through `<h6>` tags for headings. You can and should style those elements.

Here’s the suggested rules:

- Use space above and below (see the next lesson on spacing for how).
- Limit the number of heading levels (two or three is best).
- Larger than the body text, but not too much.
- You can use a different font family for headings, but you don’t have to.

### Further Exploration: Styling headings

[Read more about styling headings](https://practicaltypography.com/headings.html) from Practical Typography.

### Emphasis

You can use the `<strong>` and `<em>` tags to create emphasis. You can style those elements to create further contrast, if you want.

- **Bold** text creates strong emphasis
- *Italic* text creates a more subtle emphasis
- Don’t use both at the same time, and try not to overuse them

You can also use CSS properties to control emphasis:

- `font-weight` controls how heavy (bold) text should appear.
- `font-style` controls whether text should be italicized or not
- `text-transform` and `font-variant` can be used to create all-caps or small-caps effects
- `text-decoration` controls text underline, overline, or strike-through.

<aside>

🚧 People strongly associate underlining with hyperlinks. Therefore, on the web, it's best to underline only links.
*(from [MDN: HTML Text Fundamentals](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/HTML_text_fundamentals))*

</aside>

### Further Exploration: Bold and Italic

See Practical Typography’s [chapter on Bold and Italic](https://practicaltypography.com/bold-or-italic.html)

### Links

People visually recognize links because they are styled differently from other text. 

Often, they are colored differently and underlined.

- Links are a good time to use an accent color to style text.
- You can change the `text-decoration` - you can remove the underline, or show it only on hover.
- You can style other properties, like `background-color` and `border-bottom`.
- Link states: hover, visited, active

Links can show differently when they are hovered over, or after they’ve been clicked. To apply styles to particular states, you need a new kind of selector: the `:hover` and `:visited` pseudo-selectors.

```css
    /* default link styles  */
    a {
      text-decoration: none;
      color: royalblue;
    }
    
    /* link styles when hovered */
    a:hover {
    	text-decoration: underline;
    	color: midnightblue;
    }
    
    /* link styles after visited */
    a:visited {
      text-decoration: none;
    	color: darkorchid;
    }
```

It’s also nice to be able to make the cursor show differently when hovering something clickable. By default, clickable links have `cursor: pointer` to make the pointer into a little hand icon. You can apply this yourself to other elements that are meant to be clicked.

Read more about [styling links on MDN](https://developer.mozilla.org/en-US/docs/Learn/CSS/Styling_text/Styling_links).

### Styling Lists

You can control the appearance of lists using the text styling and spacing CSS properties. There’s also some additional properties to control the appearance of list items. Read more about [styling lists on MDN](https://developer.mozilla.org/en-US/docs/Learn/CSS/Styling_text/Styling_lists).

## Practice: Typesetting a Homepage

<aside>

🏫 Practice applying what you’ve learned about styling text by styling the homepage for a school.

[Access the Repl here](https://replit.com/team/web-foundations-july-2022/Typesetting-a-community-college-homepage)

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://replit.com/team/web-foundations-july-2022/Typesetting-a-community-college-homepage" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>
