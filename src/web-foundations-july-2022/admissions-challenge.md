# Admissions challenge - for reference only
---

<aside>

**Well done on completing the challenge and gaining admission to the program.** This page includes all the lessons you did as part of the challenge, for reference only. You've finished the challenge, so there is nothing more for you to do on this page.

</aside>




## In this lesson, you’ll get:

- An overview of how learning works at Kibo
- Instructions to set up the tools you need
- A brief intro to web development
- There’s also a Scavenger Hunt Exercise to introduce you to the DevTools.


## Before you start...

At Kibo, we love learning together!

> As a tradition, we take a “peakture” together on zoom!

![As a tradition, we take a “peakture” together on zoom!](https://lh3.googleusercontent.com/pw/AM-JKLV8Ai7156wBfMB0f3AXB91QuaBcqiC6QlBL4EfLCPhtb-K02tTmoITNihlfmhF7h2ycRLc-ts-Cqf05A4qJ_LXiIzg8kDBqRZ6yjf3UYM_3WxHWLFqhuvX5vvElXWKFttROKTFjwn3dREsefDXyECFh=w2548-h1592-no?authuser=0)


## Learning with Kibo

Kibo is different from other classes you have been a part of.

- Kibo is an online program. That means that **you’re in charge of your own learning**.
- A lot of the learning is **asynchronous:** you go at your own pace. There is a **weekly live class** everyone will attend, and weekly assignments everyone will submit.
- Get ready for a challenging journey. You need to **schedule lots of practice time.** Learning to code takes time!
- We love learning to code together. Once the program starts, you’ll **work with partners and groups**.

We want everyone who enrolls in Kibo to be successful. Therefore, before you can fully enroll in the program, we want to check that Kibo-style learning works for you. That’s why we want you to read these pages, set up your tools, and complete the assignment.


## Challenge Outline

<aside>

> Complete the admissions challenge by completing each of the sections below

- Sign Up for Replit

- Intro to Web Development

- Assignment - Scavenger Hunt

- Wrap Up

</aside>

# <p>

# Sign Up for Replit


### What is Replit?

How do you actually make code show up as a website?

In this course, we’ll use **Replit** to edit and run our code. Replit is also where you’ll complete practice exercises and projects.

### Sign up for Replit

<aside>

🛠️ Throughout the Try Kibo program, you will write code in Replit. It has everything you need to build and run computer programs in HTML, CSS, and JavaScript.

You will use Replit to **practice coding** and to **submit your assignments**.

</aside>

**To create a Replit account:**

- Go to [replit.com](https://replit.com)
- Select "Sign up" on the top right corner, and enter the required information

<aside>
🚨 We need to know who you are! When you sign up for Replit:

1. **Use the email you used to apply to Kibo**
2. Go to your account page [here](https://replit.com/account) and add your **first** and **last** name
</aside>

## Try Replit


- Using the link below, click the green play button ▶️ to run program and see the code turned into a website.

- **If you are signed into Replit**, you can fork (i.e. create a personal copy) the program, edit the HTML and CSS files, and see the results. 

- The **fork** button is at the top-right corner of the page.

> [https://replit.com/@kibocurriculum/Example-Replit#index.html](https://replit.com/@kibocurriculum/Example-Replit#index.html)

---


# <br>

# Intro to Web Development


In this section, you’ll learn the basics of HTML, CSS, and JavaScript.

<aside>

- You’ll see all this material again in Week 1 of the class — you don’t need to memorize it now. 

- Think of it as a preview of what the course will be like. 

- You’ll get to apply what you learn in the DevTools Scavenger Hunt next.

</aside>

# Web Development

This course is about how to build web pages.

**Web Development** is everything that’s involved in building websites. Websites as different as Youtube, Wikipedia, Twitter, and Google all use the same building blocks under the hood. Behind the scene, all of those websites and each of those features use **HTML**, **CSS**, and **JavaScript**.

All the familiar features like text, images, colors, input boxes, forms, and videos are made out of these technologies. There are some features like chat or purchases that require learning more than what we’ll cover, but everything you see on the web is based on these foundational languages.

> In this course, you’ll learn the basics of building websites with HTML, CSS, and JavaScript.

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
<img src="./images/valley-waterfall.png" alt="this is an example image" />
```

This is a paragraph. It has an [Example Link](http://example.com) inside the paragraph.

![Untitled](./admissions-challenge/Untitled.png)


### HTML Elements

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

![Untitled](./admissions-challenge/intro-to-web-development/Untitled-2.png)

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

![BCDF355C-419C-4670-A99D-D70D1D5C78AB-655-0000EDA4FBD29F61.png](./admissions-challenge/intro-to-web-development/BCDF355C-419C-4670-A99D-D70D1D5C78AB-655-0000EDA4FBD29F61.png)

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
- Use the link below to access and attempt the exercise

> [https://replit.com/@kibocurriculum/Try-it-Change-The-Colour](https://replit.com/@kibocurriculum/Try-it-Change-The-Colour)

</aside>

## CSS Syntax

Each rule has a **selector** and a list of **declarations.** The selector says which elements should get these styles.

> In the example, the selector is `p`, so all the `<p>` elements should get the styles.
> 

A declaration is a **property** and a **value.**

> In the example, the property is `color` and the value is `red`
> 

![Untitled](./admissions-challenge/intro-to-web-development/Untitled-2.png)

There’s a ton more to learn about how the selectors work, what properties are available, and what values are available. We’ll cover some in the course, but not everything!

## Browser Developer Tools

The other tools we’ll use frequently in the course are the Browser Developer Tools (also called the “DevTools”, the “Inspector”, or the “Console”).

<aside>

🎥 Here’s a quick video of how to open and use the DevTools

</aside>

<div style="position: relative; padding-bottom: 62.5%; height: 0;"><iframe src="https://www.loom.com/embed/0e80e8d156ae4cb6a417d7591f88e04b" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

<br>

👍🏿 The DevTools are awesome for seeing how a webpage is working, and testing out code.

<aside>

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
# <br>
# Assignment - Scavenger Hunt

For this Scavenger Hunt, you’ll use the DevTools to view and edit properties of a webpage. You’ll get to explore for yourself what a webpage is made of, and practice using the tools that real web developers use to debug websites.

<aside>

⚠️ You must submit the assignment** to be admitted to the program.

📵 This challenge is not designed for mobile phones. If you do not have access to a laptop, you will not be able to enroll in the program.

</aside>


## Instructions

- On your laptop, go to [https://devtools.programming.africa/](https://devtools.programming.africa)
- Use the DevTools to find the **secret messages** on the page
- When you are finished, **enter the full secret message** into the form below

<aside>
🚨 We need to know who you are! When you fill out the form

1. **Use your preferred first and last name**
2. **Use the email you used to apply for Kibo**
</aside>

<aside>
⚠️ If you get stuck on this assignment, watch the video below to see how to solve each clue.

⚠️ **Solution Video** (Only watch if you are totally stuck!)
    
This video shows a slightly different version of the challenge. You should be able to follow the same steps, but **the answer shown in this video is not the correct answer**!

> [https://www.loom.com/share/6c15b25937af4431b5a5c7ed85ec26ff](https://www.loom.com/share/6c15b25937af4431b5a5c7ed85ec26ff)
    
</aside>

<aside>

Enter the full message into the form below

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://docs.google.com/forms/d/e/1FAIpQLSfi-TtHqlX3hIfG4K6qfHZiujg6l0viyQpe-gQUgm3csoR5lQ/viewform" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>


---

<br>

# Wrap Up

<aside>

⚠️ Have you submitted the answer to the Scavenger Hunt?

</aside>

**If so, congratulations! You have now completed the admissions challenge! 🎉**

<aside>

Here’s what you learned:

- How to use **Replit** and **Notion** to learn with Kibo
- The **basics of HTML, CSS, and JavaScript**
- How to **use DevTools** to view and edit properties of a webpage

</aside>

## What’s next?

- **Receive your admission decision:** we will review your submission and send you an email within one week if you have been admitted to the program.
- **Complete onboarding:** During the week of July 4, you will select your live class time, and join our Discord learning community. Once you complete these steps, you will be sent an invite to Orientation which is mandatory and takes place on **[July 12 at 3 pm GMT](https://www.timeanddate.com/worldclock/converter.html?iso=20220712T150000&p1=tz_gmt)** on Zoom. **Save the date!**

## Congrats!

We’re so excited for you to join Kibo! We hope this brief taste of Web Development gets you excited for what’s to come.

![peakture](./admissions-challenge/peakture.jpeg)

---

## See you soon! ✨
