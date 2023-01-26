# Fonts

> The easiest and most visible improvement you can make to your typography is to use a professional font
>
> *[Butterick’s Practical Typography, Summary of key rules](https://practicaltypography.com/summary-of-key-rules.html)*

The `font-family` CSS property sets the font face.

This example sets the font to [Garamond](https://en.wikipedia.org/wiki/Garamond), a nice-looking web-safe font.

```css
body {
    font-family: Garamond;
}
```

There are *lots* of fonts. For using fonts on a web page, there are two categories you need to know: web safe fonts and custom fonts.

## Web Safe Fonts

_Fonts_ are files that the browser needs in order to display each character 
correctly. Each letter and symbol is represented by the points that make it up,
sort of like the pixels that make up an image.

_Web-safe_ fonts are pre-installed on most computers, so you can use them 
without any other steps. See [CSS Font Stack](https://www.cssfontstack.com/) for the list.

## Custom Fonts

If you want to use fonts that aren’t already installed on the user’s computer, 
you can use a `<link>` tag to load the font, just like you link a stylesheet. 
That way, the browser knows where to download the font before using it.

[Google Fonts](https://fonts.google.com/) is a tool for finding and using custom 
fonts. You can browse or search for a font, then copy a `<link>` tag and 
`font-family` rule to use in your site.

<details>
<summary><strong>Example: Google Fonts usage</strong></summary>

For using the font [Merriweather](https://fonts.google.com/specimen/Merriweather) in Regular, *Italic*, and **Bold,** loading from Google fonts.

Add this to the `<head>` in `index.html`

```html
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">
```

And use this as the CSS rule for the text to style (in this case, `body`):

```css
body {
    font-family: 'Merriweather', serif;
}
```

Both of these are copied from the Google Fonts page after selecting the fonts.

</details>

## Try it: Find and use a custom font

Practice choosing and loading a font.

> * Visit [Google Fonts](https://fonts.google.com/) and set a timer for 5 minutes
> to explore and choose a font.
> * Add that font to your _Good Text, Bad Text_ practice site. You can
> refer to the example above for what should go in the `<head>` tag in your
> html.
> * Use the `font-family` property to apply your font to the text.

## Font stacks and Fallbacks

Since different users have different fonts installed, the `font-family` property allows specifying a list of fonts. The browser will try each one in order, and use the first one that works.

For example:

```css
font-family: "Lucida Grande", "Lucida Sans", Geneva, Verdana, sans-serif;
```

With this font stack, the browser will try `Lucida Grande` first, then 
`Lucida Sans`, then `Geneva`, then `Verdana`, then the browser’s default 
`sans-serif` font. The first one that it finds will be used.

## Further Exploration: Web Fonts

There's tons more to learn about fonts.

<details><summary>MDN on Web Fonts</summary>

Read the MDN page on [Web Fonts](https://developer.mozilla.org/en-US/docs/Learn/CSS/Styling_text/Web_fonts) to learn more about font stacks and setting custom fonts.

- Using `font-face` CSS property to declare your own fonts
- Details about how font loading works
- Different kinds of font files

</details>
