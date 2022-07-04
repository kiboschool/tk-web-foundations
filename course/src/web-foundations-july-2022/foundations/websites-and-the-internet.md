# Websites and the internet

*Estimated Time: 20 minutes*

---

# What is a program?

Everything you do on the computer has a computer program — “software” — behind the scenes.

We write computer programs to help us solve problems or perform tasks, like editing documents, browsing web pages, sharing images, or chatting with friends.

In this course, we’re focused on a specific kind of program: **Web Pages**.

## Apps, Web Apps, and Web Pages

<aside>

📺 Welcome to the world of Apps!

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;">
<iframe width="100%" height="415" src="https://www.youtube.com/embed/qt6gSW-uYKI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

</div>

**Apps** (Applications) are the programs that users interact with. There are a few different kinds:

- **Native Applications** run on a specific operating system, like iOS, Android, OS X, or Windows.
- **Web Applications** run in a web browser, like Chrome, Firefox, or Safari.
- **Other Applications** run on other hardware, like a game console, an Arduino, or in a car.

### **Web Pages**

A web page is basically a document written using HTML and other web technologies which can be accessed using a web browser. Web pages contains text, images, links, and other files. Combination of multiple web pages makes up a **website**. Content of a web page can either be **static** or **dynamic**.

<aside>

📺 Static vs Dynamic websites

</aside>


<div style="position: relative; padding-bottom: 56.25%; height: 0;">
<iframe width="100%" height="415" src="https://www.youtube.com/embed/0QT06AFAbdc" title="Static vs Dynamic Websites" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>


Here's a recap on ststic and dynamic web pages. 

- **Static** means it doesn’t change — it shows the same way for different users at different times. Wikipedia is a good example of a web page, or lots of web pages.
- **Dynamic** means the site changes — it shows up differently for different users at different times, like Facebook or Gmail. It usually means it saves data that users enter.

In this course, you’ll learn to make web pages. Your final project will be more like Wikipedia, and less like Facebook. 

Web Apps use the same building blocks as Web Pages. The tools in this course will help when you move on to building Web Apps in the future.

## 📺 How does the web work?

<aside>


🎥 Watch this video from Code.org for an overview of how the web works.

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://www.youtube.com/embed/kBXQZMmiA4s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

# <p>
🤯 That was a lot information!

Here’s the **main things to focus on**:

- As a user, you use your browser to navigate to a url:

![Screenshot 2022-04-11 at 18.25.20.png](websites-and-the-internet/screenshot-2022-04-11-at-18.25.20.png)

- Your browser requests files from a server
- The server sends files - HTML, CSS, JavaScript, images, and some others as needed (like audio, fonts, and attachments)
- Your browser turns those files into the page that you see.

![Screenshot 2022-04-11 at 18.26.02.png](websites-and-the-internet/screenshot-2022-04-11-at-18.26.02.png)



## How Web Apps work: Clients and Servers

*Content adapted from [MDN](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works)*

Computers connected to the web are called **clients** and **servers**. A simplified diagram of how they interact might look like this:

![https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works/simple-client-server.png](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works/simple-client-server.png)

- **Clients** are internet-connected devices. For example, your computer connected to your Wi-Fi, or your phone connected to your mobile network, using software available on those devices — usually a web browser like Firefox or Chrome.
- **Servers** are computers that store webpages, sites, or apps. When a client device wants to access a webpage, a copy of the webpage is downloaded from the server onto the client machine to be displayed in the user's web browser.

## What makes up a web page?

<aside>


🔑 Building a website means writing the files that the server sends. 

**In order to build websites, we have to learn about HTML, CSS, and JavaScript.**

</aside>

A website is made up of many different files. These files come in two main types:

- **Code files**: Websites are built primarily from HTML, CSS, and JavaScript, though you'll meet other technologies a bit later.
- **Assets**: This is a collective name for all the other stuff that makes up a website, such as **images**, **music**, **video**, or **PDFs**.
- 🔍 **Further Exploration**: How does the browser put the files together?
    
    When browsers send requests to servers for HTML files, those HTML files often contain [`<link>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/link) elements referencing external [CSS](https://developer.mozilla.org/en-US/docs/Learn/CSS) stylesheets and [`<script>`](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/script) elements referencing external [JavaScript](https://developer.mozilla.org/en-US/docs/Learn/JavaScript) scripts. 
    
    - The browser reads the HTML file first.
    - The browser looks for any `<link>`elements to external CSS stylesheets and any `<script>`elements that reference JavaScript files.
    - The browser sends requests back to the server for the CSS files it has found from `<link>` elements and the JavaScript files from `<script>` elements.
    - The browser builds the page from the HTML, applies the styles from the CSS, and executes the JavaScript. It shows the resulting page on the screen.
    - Then you see the page content, and can interact with it!
    
In this class, we won’t worry too much about how the other computer decides which files to send, or how to write other kinds of programs. If you continue to learn more about programming and web development, you’ll learn more about how that part of the system works.

If you’re curious about this topic, you can read more on [MDN’s page on How the Web Works](https://developer.mozilla.org/en-US/docs/Learn/Getting_started_with_the_web/How_the_Web_works).
    

## Practice: Draw the Web

<aside>


👩🏾‍🎨 **Draw what it looks like to load a webpage.**
Some ideas to include in your image: browser, server, files (HTML, CSS, JS)

- Draw using whatever tool you like (such as paper, [tldraw](https://www.tldraw.com/), or the built-in Padlet draw tool)
- Take a screenshot, a phone picture, or export the image if you use a drawing tool
- Upload the image to the Padlet (click the + button in the bottom-right, then add your image)
- You can also choose to Draw from the Padlet "more" menu.
</aside>

<div style="border:1px solid rgba(0,0,0,0.1);border-radius:2px;box-sizing:border-box;overflow:hidden;position:relative;width:100%;background:#F4F4F4"><iframe src="https://padlet.com/embed/3re7ltoifttilr5d" frameborder="0" allow="camera;microphone;geolocation" style="width:100%;height:608px;display:block;padding:0;margin:0"></iframe></div>