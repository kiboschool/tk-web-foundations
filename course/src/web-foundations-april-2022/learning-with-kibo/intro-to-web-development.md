# Intro to web development

*Estimated Time: 30 minutes*

---

In this section, you’ll learn the basics of HTML, CSS, and JavaScript.

<aside>


⚠️ You’ll see all this material again in Week 1 — you don’t need to memorize it now. Think of it as a preview of what the course will be like. You’ll get to apply what you learn in the DevTools Scavenger Hunt next.

</aside>

# Web Development

This course about how to build web pages.

**Web Development** is everything that’s involved in building websites. Websites as different as Youtube, Wikipedia, Twitter, and Google all use the same building blocks under the hood. Under the hood, all of those websites and each of those features use **HTML**, **CSS**, and **JavaScript**.

All the familiar features like text, images, colors, input boxes, forms, and videos are made out of these technologies. There’s some features like chat or purchases that require learning more than what we’ll cover, but everything you see on the web is based on these foundational languages.

In this course, you’ll learn the basics of building websites with HTML, CSS, and JavaScript.

## HTML, CSS, and JavaScript

Web pages are built using different technologies. The most basic and fundamental ones are HTML, JavaScript, and CSS.

Roughly speaking,

- **HTML** is for content
- **CSS** is for styles
- **JavaScript** is for interactions

These three languages come together to make up a website. Today, we’re just going to focus on HTML and CSS.

# HTML

HTML makes up the content and structure of the webpage. It’s what a page is made of.

Here’s an example. On the left is a snippet of HTML. On the right is that same snippet, as a webpage.

```html
<p>
	This is a paragraph. It has an 
	<a href="https://example.com">
		Example Link
	</a> 
	inside the paragraph.
</p>
<img src="valley-waterfall.png" alt="this is an example image" />
```

This is a paragraph. It has an [Example Link](http://example.com) inside the paragraph.

![Untitled](/web-foundations-april-2022/publishing-and-sharing/domains-and-hosting/untitled.png)

## HTML Elements

HTML is made of text you can type on your keyboard. In addition to normal words, there are special words in angle brackets, like `<p>`, `<a>`,  and `<img>` that add structure to the content.

The building blocks of HTML are called **elements.** A webpage is made up of elements.

- Elements have different **types**
- Elements can **nest** inside each other
- Elements can have **attributes**

## **Types and Tags**

There are lots of types of elements. In the snippet above, the elements are:

- `<p>` for paragraph
- `<a>` which stands for ‘anchor’, but means link
- `<img>` for images

The syntax that looks like  `<some name>` is called a **tag***.* It says what kind of element it is. 

Elements usually have two tags: an opening tag, and a closing tag. They say where the element starts and where it stops.

```html
<p>Opening first, then closing</p>
```

- The opening tag is `<p>`
- The closing tag is `</p>`, with a forward slash `/` before the `p`.

There are [many many elements](https://developer.mozilla.org/en-US/docs/Web/HTML/Element) in addition to these three. You’ll learn about 20 to 30 elements in the course, and you don’t need to memorize any of them today. You can always look them up if you forget.

## **Nesting**

HTML elements can go inside of each other. Everything that’s in between the opening tag and the closing tag is ‘inside’ an element. It can be text, like the paragraph above, or other HTML elements, or both!

```html
<div>  <!-- Outer Element -->
	<p>  <!-- Inner Element -->
		some text
	</p>  
</div>
```

<aside>


💬 **HTML Comments** won’t show up on the page.

```html
<!-- This is a comment, so it's ignored -->
```

We use comments to inform you about the code, like in the example above.

</aside>

## **Attributes**

HTML elements can also tell the browser more information about themselves. For instance, an `<img>` tag can tell the browser where to find the actual image, and an `<a>` tag can tell where to link to.

This kind of information goes in an element’s **attributes.** So attributes provide more information about how an element should work.

Here’s some examples:

- the `src` (source) of an `<img>` (image) element tells the browser where to go to find the actual image to put there:

```html
<img src="valley-waterfall.png" />
```

- the `href` (hypertext reference) of an anchor tag (`<a>`) tells the browser where the link should go when you click it.

```html
<a href="https://example.com">The text that shows up</a>
```

- the `class` attribute of any element helps identify it as part of a group. It’s really useful for styling and adding interactivity.

```html
<p class="nice">Hello world!</p>
```

Here’s an image summarizing the parts of an HTML element:

![Untitled](/web-foundations-april-2022/publishing-and-sharing/domains-and-hosting/untitled-1.png)

# CSS

CSS controls the appearance of HTML elements.

CSS is made of **rules** that look like this:

```css
p {
	color: red;
}
```

This CSS sets the color of the text within paragraphs to red.

Here’s the result:

![BCDF355C-419C-4670-A99D-D70D1D5C78AB-655-0000EDA4FBD29F61.png](/web-foundations-april-2022/learning-with-kibo/intro-to-web-development/bcdf355c-419c-4670-a99d-d70d1d5c78ab-655-0000eda4fbd29f61.png)

(Here’s the HTML)

```html
<p>This is a paragraph. It has an <a href="https://example.com">Example Link</a> inside the paragraph. </p>
```

## Try It: Change the Color

<aside>


👉🏿 Your turn! In this Replit, you can practice changing what shows up on the page by editing the CSS file. 

Set a timer for **10 minutes** to experiment with HTML and CSS in Replit.

- Try changing the text in the paragraph.
- Try changing the CSS so that the color is blue.
</aside>

*If the embed below doesn’t load, use this link to open the page directly: <div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://replit.com/team/tk5-web/Try-It-Change-the-Color" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>*

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://replit.com/team/tk5-web/Try-It-Change-the-Color" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

## CSS Syntax

Each rule has a **selector** and a list of **declarations.** The selector says which elements should get these styles.

> In the example, the selector is `p`, so all the `<p>` elements should get the styles.
> 

A declaration is a **property** and a **value.**

> In the example, the property is `color` and the value is `red`
> 

![Untitled](/web-foundations-april-2022/publishing-and-sharing/domains-and-hosting/untitled-2.png)

There’s a ton more to learn about how the selectors work, what properties are available, and what values are available. We’ll cover some in the course, but not everything!

## Browser Developer Tools

The other tools we’ll use frequently in the course are the Browser Developer Tools (also called the “DevTools”, the “Inspector”, or the “Console”).

<aside>


🎥 Here’s a quick video of how to open and use the DevTools

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.loom.com/embed/0e80e8d156ae4cb6a417d7591f88e04b" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

<aside>


👍🏿 The DevTools are awesome for seeing how a webpage is working, and testing out code.

> **It’s impossible to do any permanent damage to a website from the DevTools.**
> 

None of the changes you make in the DevTools are permanent. It’s a safe space to experiment. If something goes wrong, you can refresh 🔁 the page and get back to the original.

</aside>

You can read more on MDN about [What the DevTools are](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_are_browser_developer_tools) and how to use them to [View and change the HTML Elements](https://developer.chrome.com/docs/devtools/dom/) and [CSS Properties and Values](https://developer.chrome.com/docs/devtools/css/).

## In summary

- Websites are made of HTML, CSS, and JavaScript
- HTML has elements that look like
    
    ```css
    <a href="https://example.com">A Link Example</a>
    ```
    
- CSS has rules that control the appearance of selected elements, like
    
    ```css
    p {
      color: red;
    }
    ```
    
- You’ll use Replit and the DevTools as your toolbox in the course

Next, you’ll use the DevTools to find hidden messages in the Scavenger Hunt.

---

<aside>


<img src="/web-foundations-april-2022/learning-with-kibo/man-in-hike.png" alt="man-in-hike.png" width="40px" /> Next up: [Assignment - Scavenger Hunt](/web-foundations-april-2022/learning-with-kibo/assignment-scavenger-hunt.md)

</aside>