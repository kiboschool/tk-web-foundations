# 1.3 HTML Elements and Attributes

*Estimated Time: 30 minutes*

---

In Week 0, you learned about the roles HTML, CSS, and JavaScript play, and you learned what HTML and CSS look like.

In this lesson, you’ll revisit HTML in more detail, and learn more elements.

<aside>
📺 Check out this video on the basics of HTML

</aside>

[https://www.youtube.com/watch?v=Hjl6gbg9kmk](https://www.youtube.com/watch?v=Hjl6gbg9kmk)

# What’s HTML again?

HTML makes up the content and structure of the webpage. It’s what a page is made of.

Here’s an example. On the left is a snippet of HTML. On the right is that same snippet, as a webpage.

Example:

```html
<p>
	This is a paragraph. It has an 
	<a href="https://example.com">
		Example Link
	</a> 
	inside the paragraph.
</p>
<img src="./images/valley-waterfall.png" alt="this is an example image" />
```

Result:

This is a paragraph. It has an [Example Link](http://example.com) inside the paragraph.

![Untitled](/web-foundations-april-2022/week-4-publishing-and-sharing/4-3-domains-and-hosting/untitled.png)

## HTML Elements

HTML is made of text you can type on your keyboard. In addition to normal words, there are special words in angle brackets, like `<p>`, `<a>`,  and `<img>` that add structure to the content.

The building blocks of HTML are called **elements.** A webpage is made up of elements.

- Elements have different **types**
- Elements can **nest** inside each other
- Elements can have **attributes**

## **Types and Tags**

There are lots of types of elements. In the snippet above, the elements are:

- `<a>` stands for ‘anchor’, but means link
- `<p>` for paragraph
- `<img>` for images

The syntax that looks like  `<some name>` is called a **tag***.* It says what kind of element it is. 

Elements usually have two tags: an opening tag, and a closing tag. They say where the element starts and where it stops.

```html
<p>Opening first, then closing</p>
```

- The opening tag is `<p>`
- The closing tag is `</p>`, with a forward slash `/` before the `p`.

There are [many many elements](https://developer.mozilla.org/en-US/docs/Web/HTML/Element) in addition to these three. You’ll learn about 20 to 30 elements in the course. You can always look them up if you forget.

### Self-closing tags

Elements *usually* have two tags, but sometimes they only have one.

If the element doesn’t need to have any content inside it, it can use a **self-closing tag.**

```html
<img src="./waterfall.png" />
```

Instead of having a closing tag like `</img>`, this tag ends with `/>`. It closes itself — it doesn’t need the closing tag too.

Not every element can be self-closing. Image elements never have any content inside, so they can self-close. [MDN lists the ‘empty’ elements that can be self-closing](https://developer.mozilla.org/en-US/docs/Glossary/empty_element).

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
<img src="./images/valley-waterfall.png" />
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

![Untitled](/web-foundations-april-2022/week-4-publishing-and-sharing/4-3-domains-and-hosting/untitled-1.png)

# Elements to know

There’s more than 200 HTML elements. (You can [see them all on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)). You don’t need to memorize all of them. There are tons of them you’ll never ever use! 

Here’s the ones that you actually ought to know, along with some examples:

## `<a>`: hyperlink

`<a>` stands for ‘anchor’, but means link. It’s the element that connects the whole web together.

Example:

```html
<a href="https://kibo.school">Kibo Homepage</a>
```

Result:

[Kibo Homepage](https://kibo.school)

- The **href** attribute determines where the link will go when clicked
- Whatever’s inside the tag is clickable as a link

<aside>
🤔 How would you make an **image** that linked to another page?

- **Answer**
    
    You put the image inside the link, like this:
    
    ```jsx
    <a href="https://kibo.school">
    	<img src="valley-waterfall.jpeg" />
    </a>
    ```
    
    When someone clicks on the image, it will navigate to the URL, just like a text link.
    
</aside>

- **Further Exploration: Hyperlinks**
    
    [Read more about the `<a>` tag and hyperlinks on MDN](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Creating_hyperlinks). 
    
    Topics to explore:
    
    - URLs, paths, absolute and relative paths
    - email (`mailto`) and phone (`tel`) links
    - urls, absolute and relative paths, and files
    - download links
    - linking directly to a part of a page

## Image: `<img>`

Images make the web visually appealing. The `<img>` tag tells which image to add, where.

Example:

```html
<img	src="./images/valley-waterfall.png" alt="a waterfall running through a valley"/>
```

![Untitled](/web-foundations-april-2022/week-4-publishing-and-sharing/4-3-domains-and-hosting/untitled.png)

- The **src** attribute says where to find the image
- The **alt** attribute should contain a text description of the image, for accessibility
- **Further Exploration: Images**
    
    [Read more about `<img>` and Images in HTML on MDN.](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Images_in_HTML)
    
    Topics to explore:
    
    - URLs and paths for images
    - types of image files
    - alt text and screen readers
    - setting image width and height
    - figures and captions
    - background images
    
    Also check out this [video about images and Pixels from Code.org](https://www.youtube.com/watch?v=15aqFQQVBWU)
    

## Text

**Text Nodes**

Inside a `<p>`, an `<a>`, or lots of other tags, you’ll see regular text. Text placed inside many elements shows up on the page. Sometimes, depending on the element, the text will show up differently.

## Text Elements

### `<p>`: Paragraph

`<p>` is for paragraph. It’s for the body text that makes up the bulk of text-heavy pages. 

Example:

```html
<p>It's a paragraph of text.</p>
<p>Hello world!</p>
```

Result:

It's a paragraph of text.

Hello world!

- Paragraphs show the text inside the tag. They don’t make the text show a special way.
- Each paragraph gets shown on a new line when the page is displayed.

### `<h1>` to `<h6>`: Heading

Example:

```html
<h1>My Website</h1>
<h2>About me</h2>
```

Result:

# My Website

## About me

- There are six heading elements.
- The biggest one is `h1`, the smallest is `h6`
- They are used for the title of the page, section and subsection titles

### `<ul>`, `<ol>`,  `<li>`: Lists

Example:

```html
<ul>
	<li>Onions</li>
	<li>Chicken</li>
</ul>

<ol>
	<li>Preheat the oven</li>
	<li>Prepare the ingredients</li>
</ol>
```

Result:

- Onions
- Chicken

1. Preheat the oven
2. Prepare the ingredients

There are two kinds of lists. Unordered Lists `<ul>` have dots before each item. Ordered Lists `<ol>` have increasing numbers before each item. Both lists use `<li>` for list items.

### `<strong>`, `<em>`: emphasized text

Example:

```html
<strong>Important Note</strong>
<em>By the way, this text is distinct</em>
```

Result:

**Important Note**

*By the way, this text is distinct*

- Both of these tags indicate that text is emphasized in some way
- `<strong>` is a strong emphasis, for **really important information**
- `<em>` is for information that’s *different from the norm, but not as strongly emphasized*

## Practice: Use the basic elements

<aside>
👉🏿 Your turn! Use these tags to mark up the page.

</aside>

[https://replit.com/team/tk5-web/Practice-Use-the-basic-elements](https://replit.com/team/tk5-web/Practice-Use-the-basic-elements)

## Practice: Find a new tag on MDN

<aside>
🔍 The **Mozilla Developer Network (MDN)** is a top source of tutorials and reference materials for Web Developers. 

Starting at the [MDN overview page on HTML](https://developer.mozilla.org/en-US/docs/Web/HTML), find a description for an HTML element that’s new to you. In the Padlet below, share:

- the name of the element
- the link to the MDN page, and
- what you find interesting about it
</aside>

[https://padlet.com/curriculumpad/mxl15sdveaow1kk8](https://padlet.com/curriculumpad/mxl15sdveaow1kk8)

---

<aside>
<img src="../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/man-in-hike.png" alt="../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/man-in-hike.png" width="40px" /> Next up: [CSS Selectors and Properties](/web-foundations-april-2022/week-1-foundations/1-4-css-selectors-and-properties.md)

</aside>