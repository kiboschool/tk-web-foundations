# 2.2 Styling Text

*Estimated Time: 1 hour*

---

Text is a huge part of a webpage. If the text looks good, the page will (most likely) look good.

There’s a lot you can control about how text looks! Size, color, spacing, and shape are only the first layer. There’s also more niche text styles, like decoration (e.g. underline or ~~strikethrough~~), the appearance of the icons beside list items, or whether text is laid out right-to-left or left-to-right.

Choosing the right values for each property is complicated. Each change you make to one property forces you to tweak something else to get it right. Over time, you’ll build an intuition for what makes a site look good, and how to achieve good design with CSS. For now, we’ll focus on telling you what properties CSS can control, and the most important rules for good typography.

# CSS Text Properties

### K**ey rules for Typography**

The body text is the most important text to style. These rules help make text look good:

- Point size should be 15-25 pixels on the web.
- Line spacing should be 120–145% of the point size.
- The average line length should be 45–90 characters (including spaces).
- The easiest and most visible improvement you can make to your typography is to use a professional font.

The [summary of key rules](https://practicaltypography.com/summary-of-key-rules.html) from Practical Typography lists additional rules to making text look good:

<aside>
📘 In this lesson, we refer several times to Matthew Butterick’s book [Practical Typography](http://practicaltypography.com). It’s great further reading material, if you are curious to learn more about typography.

</aside>

Now that you know some about what good typography should look like, you need to know how to use CSS to control those properties. Let’s go through each of the key recommendations and identify the CSS property that controls that aspect of typography.

### **Point size should be 15-25 pixels**

`font-size` is the relevant CSS property, so the recommendation is that the body text have between `font-size: 15px` and `font-size: 25px`, depending on the particular font.

### **Line spacing should be 120–145% of the point size**

`line-height` controls how tall each line is. You can set it as a multiple of the `font-size` by using a value without units, like `1.4`. So, the recommendation is to use between `line-height: 1.2` and `line-height: 1.45` depending on the particular font. 

### **The average line length should be 45–90 characters**

Line length is determined by the width of the parent element. The `max-width` on the parent element is often easiest way to control the average line.

### Color

> **Less color is more effective**. When everything is emphasized, nothing is emphasized.

Consider making your text dark gray rather than black.

*[Butterick’s Practical Typography, Color](https://practicaltypography.com/color.html)*
> 

The `color` property in CSS sets the color of text. Your primary goal should be to create *contrast* between the background color and the text color. Dark text on a dark background is hard to read. So is light text on a light background.

Usually, the best choice is black or dark gray text, on a white or near-white background.

## Practice: CSS Text Properties

<aside>
🔤 Practice using the properties to style text. Follow the instructions in the Repl.

Access the exercise here: [https://replit.com/team/tk5-web/21-Practice-CSS-Text-Properties](https://replit.com/team/tk5-web/21-Practice-CSS-Text-Properties) or below

</aside>

[https://replit.com/team/tk5-web/21-Practice-CSS-Text-Properties](https://replit.com/team/tk5-web/21-Practice-CSS-Text-Properties)

- **Further Exploration: Text and Font Styling**
    
    The [Text and Font Styling](https://developer.mozilla.org/en-US/docs/Learn/CSS/Styling_text/Fundamentals) page on MDN has more detail about these properties and other properties you can use to style text. Read about:
    
    - Text `color`
    - Values and Units
    - Styling with `font-weight`, `text-transform`, `text-decoration`, and `text-shadow`
    - Alignment and spacing with `text-align`, `letter-spacing`, and `word-spacing`
    
    It also links to many other pages about styling text. **There’s a ton to explore**.
    

## Fonts

> The easiest and most visible improvement you can make to your typography is to use a professional font

[*Butterick’s Practical Typography, Summary of key rules](https://practicaltypography.com/summary-of-key-rules.html)*
> 

The `font-family` CSS property sets the font face.

This example sets the font to [Garamond](https://en.wikipedia.org/wiki/Garamond), a nice-looking web safe font.

```css
body {
	font-family: Garamond;
}
```

There are *lots* of fonts. For using fonts on a web page, there are two categories you need to know: web safe fonts and custom fonts.

**Web Safe Fonts**

These fonts are pre-installed on most computers, so you can use them without any other steps. See [CSS Font Stack](https://www.cssfontstack.com/) for the list.

**Custom Fonts**

If you want to use fonts that aren’t already installed on the user’s computer, you can use a `<link>` tag to load the font, just like you link a stylesheet. That way, the browser knows where to download the font before using it.

[Google Fonts](https://fonts.google.com/) is a tool for finding and using custom fonts. You can browse or search for a font, then copy a `<link>` tag and `font-family` rule to use in your site. See the example for use under the toggle

- **Example: Google Fonts usage**
    
    For using the font [Merriweather](https://fonts.google.com/specimen/Merriweather) in Regular, *Italic*, and **Bold,** loading from Google fonts.
    
    Add this to the `<head>` in `index.html` 
    
    ```jsx
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">
    ```
    
    And use this as the CSS rule for the text to style (in this case, `body`):
    
    ```jsx
    body {
    	font-family: 'Merriweather', serif;
    }
    ```
    
    Both of these are copied from the Google Fonts page after selecting the fonts.
    

**Font stacks and Fallbacks**

Since different users have different fonts installed, the `font-family` property allows specifying a list of fonts. The browser will try each one in order, and use the first one that works.

For example:

```css
font-family: "Lucida Grande", "Lucida Sans", Geneva, Verdana, sans-serif;
```

Will try `Lucida Grande` first, then `Lucida Sans`, then `Geneva`, then `Verdana`, then the browser’s default `sans-serif` font. The first one that the computer has installed will be used.

- Further Exploration: Web Fonts
    
    Read the MDN page on [Web Fonts](https://developer.mozilla.org/en-US/docs/Learn/CSS/Styling_text/Web_fonts) to learn more about font stacks and setting custom fonts.
    
    - Using `font-face` CSS property to declare your own fonts
    - Details about how font loading works
    

## Style different text differently

Most of the text on the page is body text, so most of the recommendations so far have been about body text. But, there’s other text on the page too!

### Headings

Like you learned in Week 1, you can use the `<h1>` through `<h6>` tags for headings. You can and should style those elements.

Here’s the suggested rules:

- Use space above and below (see the next lesson on spacing for how).
- Limit the number of heading levels (two or three is best).
- Larger than the body text, but not too much.
- You can use a different font family for headings, but you don’t have to.
- **Further Exploration**: Styling headings
    
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

- **Further Exploration**: Bold and Italic
    
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

Access the Repl here: [https://replit.com/team/tk5-web/22-Typesetting-a-community-college-homepage](https://replit.com/team/tk5-web/22-Typesetting-a-community-college-homepage) or below

</aside>

[https://replit.com/team/tk5-web/22-Typesetting-a-community-college-homepage](https://replit.com/team/tk5-web/22-Typesetting-a-community-college-homepage)

- **Further Exploration**: What makes good Typography?
    
    ## What makes good Typography?
    
    The style and appearance of text on the page is called **Typography.** 
    
    > Good typography makes the text more effective.
    
    *[Butterick’s Practical Typography](https://practicaltypography.com/what-is-good-typography.html) - What is good typography?*
    > 
    
    That means that *different purposes ****call for different text styles*.
    
    Still, there are some fundamentals that apply across most sites.
    
    <aside>
    👉🏿 Read [Typography in Ten Minutes](https://practicaltypography.com/typography-in-ten-minutes.html). Make a note of the terms you don’t understand. There’s a lot to learn about making text look good, but this is a good starting point.
    
    For each of the terms you don’t understand, try doing a quick google search to learn more about that term. You might not totally understand everything at first, but it’s a good habit to try to do a search when you encounter a term you don’t know.
    
    </aside>
    

---

<aside>
<img src="../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/man-in-hike.png" alt="../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/man-in-hike.png" width="40px" /> Next up: [The Box Model](/web-foundations-april-2022/week-2-web-design/2-3-the-box-model.md)

</aside>