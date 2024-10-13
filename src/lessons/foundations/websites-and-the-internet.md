# The Web and the Internet

## The Internet

Even though we tend to use "the web" and "the internet" interchangably, they're actually two different things. While
the focus of this course is on the web and web development, it's good to have some foundational understanding of the
internet.

Starting in the 1960s, university and government researchers created a system to share files
between computers. That system, called ARPANET, established protocols for file sharing, routing, and messaging that
grew into the public internet.

Since then, the internet has grown to become a global network of cables, cell towers, satellites, phones, and computers
, all connected by _networking protocols_ descended from those of ARPANET.

You may have seen protocols like `http` (it's in the address bar, or at the beginning of a URL). **Protocols** like HTTP (the hypertext transfer protocol)
are _sets of rules_ that software programs follow so that they understand each other.

Connecting billions of different devices requires a lot of rules! There are a
lot of protocols that make up the modern Internet -- HTTP, TCP/IP, Ethernet,
DNS, Websockets... Even Bluetooth is a protocol that carries internet traffic!

You don't need to know what those acronyms stand for yet. You should
know that the Internet is made of a lot of devices, connected by protocols.

## Web Pages

If the Internet is the connections between the computers plus the protocols they
use to communicate, the Web is the most visible way that people interact with
the internet in their daily lives.

The Web was originally conceived as a collection of files and documents,
shared and linked together using the internet.

Web pages are documents, created using HTML, CSS and other web technologies. Web
pages can be accessed using a web browser, like Chrome or Edge. Pages contain text,
images, links, and other elements.

A combination of multiple web pages makes up a **website**.

## 📺 How does the web work?

<aside>

🎥 Watch this video from Code.org for an overview of how the web works.

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.youtube.com/embed/kBXQZMmiA4s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

<aside>

🤯 That was a lot information!

</aside>

Here’s the **main things to focus on**:

1. You use your browser to navigate to a url:

![Navigating to a URL in the browser](websites-and-the-internet/browser-url-navigation.png)

2. Your browser requests files from a server
3. The server sends files
    - HTML
    - CSS
    - JavaScript
    - images
    - others like audio, fonts, and attachments
4. Your browser turns those files into the page that you see.

![A successfully rendered webpage, the Kibo homepage](websites-and-the-internet/kibo-homepage-example.png)

<details>
<summary>
<strong>Further Exploration: Clients and Servers</strong>
</summary>

Computers connected to the web are called **clients** and **servers**. A simplified diagram of how they interact might look like this:

![https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works/simple-client-server.png](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works/simple-client-server.png)

- **Clients** are internet-connected devices. For example, your computer connected to your Wi-Fi, or your phone connected to your mobile network, using software available on those devices — usually a web browser like Firefox or Chrome.
- **Servers** are computers that store webpages, sites, or apps. When a client device wants to access a webpage, a copy of the webpage is downloaded from the server onto the client machine to be displayed in the user's web browser.

[Read More on MDN](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)

</details>

## What makes up a web page?

<aside>

🔑 Building a website means writing the files that the browser uses to make the page.

**In order to build websites, we have to learn about HTML, CSS, and JavaScript.**

</aside>

A website is made up of many different files. These files come in two main types:

- **Code files**: Websites are built primarily from HTML, CSS, and JavaScript, though you'll meet other technologies a bit later.
- **Assets**: This is a collective name for all the other stuff that makes up a website, such as **images**, **music**, **video**, or **PDFs**.

<details>
<summary>
<strong>🔍 Further Exploration: How does the browser put the files together?</strong>
</summary>

When browsers send requests to servers for HTML files, those HTML files often contain [`<link>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link) elements referencing external [CSS](https://developer.mozilla.org/en-US/docs/Learn/CSS) stylesheets and [`<script>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script) elements referencing external [JavaScript](https://developer.mozilla.org/en-US/docs/Learn/JavaScript) scripts.

- The browser reads the HTML file first.
- The browser looks for any `<link>`elements to external CSS stylesheets and any `<script>`elements that reference JavaScript files.
- The browser sends requests back to the server for the CSS files it has found from `<link>` elements and the JavaScript files from `<script>` elements.
- The browser builds the page from the HTML, applies the styles from the CSS, and executes the JavaScript. It shows the resulting page on the screen.
- Then you see the page content, and can interact with it!

In this class, we won’t worry too much about how the other computer decides which files to send, or how to write other kinds of programs. If you continue to learn more about programming and web development, you’ll learn more about how that part of the system works.

If you’re curious about this topic, you can read more on [MDN’s page on How the Web Works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works).

</details>

## Practice: Draw the Web

👩🏾‍🎨 **Draw what it looks like to load a webpage.**
Some ideas to include in your image: browser, server, files (HTML and CSS)

- Draw using whatever tool you like (such as paper, [tldraw](https://www.tldraw.com/), or the built-in Padlet draw tool)
- Take a screenshot, a phone picture, or export the image if you use a drawing tool
- Upload the image to the Padlet (click the + button in the bottom-right, then add your image)
- You can also choose to Draw from the Padlet "more" menu.

<!-- TODO: duplicate padlet and replace links -->

> [https://padlet.com/curriculumpad/draw-the-internet-ynyrdwo7xv6hroxe](https://padlet.com/curriculumpad/ynyrdwo7xv6hroxe)

<div style="border:1px solid rgba(0,0,0,0.1);border-radius:2px;box-sizing:border-box;overflow:hidden;position:relative;width:100%;background:#F4F4F4"><iframe src="https://padlet.com/embed/ynyrdwo7xv6hroxe" frameborder="0" allow="camera;microphone;geolocation" style="width:100%;height:608px;display:block;padding:0;margin:0"></iframe></div>
