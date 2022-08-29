# HTML Elements and Attributes

*Estimated Time: 30 minutes*

---

In the web challenge, you learned about the roles HTML, CSS, and JavaScript play, and you learned what HTML and CSS look like.

In this lesson, you’ll revisit HTML in more detail, and learn more elements.

## What’s HTML again?

<aside>

📺 Check out this video on the basics of HTML

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.youtube.com/embed/Hjl6gbg9kmk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

## HTML

HTML makes up the content and structure of the webpage. It’s what a page is made of.

Here’s an example. On the left is HTML. On the right is the same code, rendered as a webpage.

<div class="codepen" data-height="300" data-default-tab="html,result" data-slug-hash="vYROqPw" data-user="rrcobb"  data-prefill='{"title":"First Snippet of HTML","description":"Small demo of several different basic HTML tags","tags":[],"scripts":[],"stylesheets":[]}'>
  <pre data-lang="html">&lt;p>
    This is a paragraph. It has an 
    &lt;a href="https://example.com">
        Example Link
    &lt;/a> 
    inside the paragraph.
&lt;/p>
&lt;img src="https://wf-2.vercel.app/web-foundations-july-2022/learning-with-kibo/intro-to-web-development/untitled.png" alt="this is an example image" /></pre></div>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

## HTML Elements

HTML is made of text you can type on your keyboard. In addition to normal words, there are special words in angle brackets, like `<p>`, `<a>`,  and `<img>` that add structure to the content.

The building blocks of HTML are called **elements.** A webpage is made up of elements.

- Elements have different **types**
- Elements can **nest** inside each other
- Elements can have **attributes**

## **Types and Tags**

There are lots of **types** of elements. In the snippet above, the elements are:

- `<a>` stands for ‘anchor’, but means link
- `<p>` for paragraph
- `<img>` for images

There are [many many elements](https://developer.mozilla.org/en-US/docs/Web/HTML/Element) in addition to these three. You’ll learn about 20 to 30 elements in the course. You can always look them up if you forget.

### Tags

The syntax that looks like  `<some name>` is called a **tag**. It says what kind of element it is. 

Elements usually have two tags: an opening tag, and a closing tag. They show where the element starts and where it stops.

```html
<p>Opening first, then closing</p>
```

- The opening tag is `<p>`
- The closing tag is `</p>`, with a forward slash `/` before the `p`.

<aside>


📺 Here is a summary of HTML Tags

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.youtube.com/embed/rOPKC49gTkk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

## **Nesting HTML Elements**

HTML elements can go inside of each other. Everything that’s in between the opening tag and the closing tag is ‘inside’ an element. It can be text, like the paragraph above, or other HTML elements, or both. The element inside another element is called the **child** element while the one outside is the **parent**. Here's an example showing a `<p>` element inside an `<a>` element. 

![nested element](../learning-with-kibo/intro-to-web-development/nested_element.png)

## HTML Attributes

HTML elements often have more information. 

This kind of information goes in an element’s **attributes.** Attributes provide more information about how an element should work.

For instance, an `<img>` tag can say where to find the actual image. An `<a>` tag can tell where to link to.
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

<div style="margin-bottom: 50px; border: 1px solid #000;">

![Untitled](../learning-with-kibo/intro-to-web-development/untitled-1.png)

</div>

<aside>

📺 Here's a **video recap** on HTML Attributes

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;">
    <iframe width="100%" height="415" src="https://www.youtube.com/embed/29IbTXYRo5U" title="YouTube video player"      frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>



# Elements to know

There’s more than 200 HTML elements, you can [see them all on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element). You don’t need to memorize all of them. There are tons of them you’ll never ever use! 

Here’s the ones that you'll use this week.

## `<a>`: hyperlink

<aside>

📺 Check out this video on Hyperlink

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;">
    <iframe width="100%" height="415" src="https://www.youtube.com/embed/D9I_dJDiIu0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

`<a>` stands for ‘anchor’, but means link. It’s the element that connects the whole web together.

- The **href** attribute determines where the link will go when clicked
- Whatever’s inside the tag is clickable as a link

<p class="codepen" data-height="300" data-default-tab="html,result" data-slug-hash="MWVwNvG" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/MWVwNvG">
  a tag demo</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

<details><summary><strong>Challenge:</strong> 🤔 How would you make an **image** that linked to another page? </summary>

- **Answer**
    
    You put the image inside the link, like this:
    
    ```html
    <a href="https://kibo.school">
    	<img src="valley-waterfall.jpeg" />
    </a>
    ```
    
    When someone clicks on the image, it will navigate to the URL, just like a text link.
    
</details>

<details>
<summary>
<strong>Further Exploration: Hyperlinks</strong>
    
[Read more about the `<a>` tag and hyperlinks on MDN](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/Creating_hyperlinks). 

Topics to explore:

- URLs, paths, absolute and relative paths
- email (`mailto`) and phone (`tel`) links
- urls, absolute and relative paths, and files
- download links
- linking directly to a part of a page

</details>

## Image: `<img>`

Images make the web visually appealing. The `<img>` tag tells which image to add, where.

- The **src** attribute says where to find the image
- The **alt** attribute has a text description of the image, for accessibility

<p class="codepen" data-height="300" data-default-tab="html,result" data-slug-hash="JjLdgje" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/JjLdgje">
  Untitled</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

<aside>

📺 Check out this video on Images

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;">
    <iframe width="100%" height="415" src="https://www.youtube.com/embed/Ba1RLs0TgCo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

<details><summary><strong>Further Exploration: Images</strong></summary>

[Read more about `<img>` and Images in HTML on MDN.](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Images_in_HTML)

Topics to explore:

- URLs and paths for images
- types of image files
- alt text and screen readers
- setting image width and height
- figures and captions
- background images

Also check out this [video about images and Pixels from Code.org](https://www.youtube.com/watch?v=15aqFQQVBWU)

</details>

## Text

**Text Nodes**

Inside a `<p>`, an `<a>`, or lots of other tags, you’ll see regular text. Text placed inside many elements shows up on the page. Sometimes, depending on the element, the text will show up differently.

## Text Elements

### `<p>`: Paragraph

`<p>` is for paragraph. It’s for the body text that makes up the bulk of text-heavy pages. 

- Paragraphs show the text inside the tag. They don’t make the text show a special way.
- Each paragraph gets shown on a new line when the page is displayed.

<p class="codepen" data-height="300" data-default-tab="html,result" data-slug-hash="XWEbvMP" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/XWEbvMP">
  p tag demo</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>


<aside>

📺 Here's a **video recap** of the Paragraph tag

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;">
    <iframe width="100%" height="415" src="https://www.youtube.com/embed/By-d827_0jo" title="HTML Paragraph" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

### `<h1>` to `<h6>`: Heading

- There are six heading elements.
- The biggest one is `h1`, the smallest is `h6`
- They are used for the title of the page, section and subsection titles

<p class="codepen" data-height="300" data-default-tab="html,result" data-slug-hash="oNqXKGK" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/oNqXKGK">
  heading demos</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

### `<ul>`, `<ol>`,  `<li>`: Lists

There are two kinds of lists. Unordered Lists `<ul>` have dots before each item. Ordered Lists `<ol>` have increasing numbers before each item. Both lists use `<li>` for list items.

<p class="codepen" data-height="300" data-default-tab="html,result" data-slug-hash="QWmbeOq" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/QWmbeOq">
  List Demos</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

### `<strong>`, `<em>`: emphasized text

- Both of these tags indicate that text is emphasized in some way
- `<strong>` is a strong emphasis, for **really important information**
- `<em>` is for information that’s *different from the norm, but not as strongly emphasized*

<p class="codepen" data-height="300" data-default-tab="html,result" data-slug-hash="PoRqMEb" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/PoRqMEb">
  strong and em demos</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

## Practice: Use the basic elements

<aside>

👉🏿 Your turn! Use these tags to mark up the page. 

🔑 Click the link below to complete the exercise on Replit

[https://replit.com/team/web-foundations-july-2022/Practice-Use-the-basic-elements](https://replit.com/team/web-foundations-july-2022/Practice-Use-the-basic-elements)

</aside>

## Practice: Find a new tag on MDN

🔍 The **Mozilla Developer Network (MDN)** is a top source of tutorials and reference materials for Web Developers. 

Starting at the [MDN overview page on HTML](https://developer.mozilla.org/en-US/docs/Web/HTML), find a description for an HTML element that’s new to you. Using the link below, share:

- the name of the element
- the link to the MDN page, and
- what you find interesting about it


> [https://padlet.com/curriculumpad/48oj31pmpjw4yjwb](https://padlet.com/curriculumpad/48oj31pmpjw4yjwb)

<div style="border:1px solid rgba(0,0,0,0.1);border-radius:2px;box-sizing:border-box;overflow:hidden;position:relative;width:100%;background:#F4F4F4"><iframe src="https://padlet.com/curriculumpad/48oj31pmpjw4yjwb" frameborder="0" allow="camera;microphone;geolocation" style="width:100%;height:608px;display:block;padding:0;margin:0"></iframe></div>

