# 3.1 Multimedia HTML Elements

*Estimated time: 30 Minutes*

---

These lessons will focus on creating interactions on your web pages. First, we’ll review the interactions you already know how to create. Then we’ll learn new HTML Elements that have built-in interactivity. Then, you’ll learn the basics of JavaScript.

## Review: Link, Details, Hover, and Cursor

You have already seen elements and properties that help create interactivity.

### <a>

Perhaps the most fundamental interaction on the web is clicking a link.

```html
<a href="https://example.com">Clicking this navigates to example.com</a>
```

### <details> and <summary>

You may have also seen the `<details>` and `<summary>` elements:

```html
<details>
	<summary>Click to show more</summary>
	There is more underneath!
</details>
```

Which creates a toggle element that shows the details when you click the summary.

### hover and cursor

You’ve also learned a couple of CSS tricks that create some interactive feeling:

- Using the `:hover` selector to style elements when they are hovered (hover on MDN)
- Using the `cursor` property to style the cursor ([cursor on MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/cursor))

```css
.card:hover {
	border: 2px solid magenta;
}

.card {
  cursor: grab;
}
```

These are basic kinds of interactivity, but don’t forget about them!

## Review: Images

Images aren’t exactly interactive, but a lot of the new interactive elements work similarly to how images work.

```html
<img src="./images/valley-waterfall.png" />
```

The `src` attribute tells the browser where to find the image file, and the browser inserts the image at that spot in your site.

When styling images, you have to think about the width and height carefully so that you don’t break the **aspect ratio**. If an image is normally 100px by 100px, and you make it 50px by 200px in CSS, that will stretch out the image, and it will look bad.

When styling the new interactive elements, you’ll have to think about the same ideas: where’s the source url, and how do I style the element so that it looks right on the page.

# New interactive elements

## `<iframe>`

Inline frames allow you to embed content from another site into your site. You can use them to embed tons of different kinds of content. In this curriculum, we use tons of embedded content — YouTube and Loom videos, forms, and interactive coding exercises.

A typical iframe might look something like this:

```html
<iframe 
		src="https://www.youtube.com/embed/-RmrHkTA0Jg"
		width="560"
		height="315"
		title="YouTube video player"
		frameborder="0"
		allow="autoplay; clipboard-write; encrypted-media; picture-in-picture"
		allowfullscreen>
</iframe>
```

Which results in an embedded video like this:

[https://www.youtube.com/watch?v=-RmrHkTA0Jg&feature=emb_imp_woyt](https://www.youtube.com/watch?v=-RmrHkTA0Jg&feature=emb_imp_woyt)

The `src`, `width` and `height` attributes are probably familiar from the `<img>` element. 

- `src` is the url where the browser should find the content
- `width` and `height` control the width and height of the element

The other attributes are new:

- `title` sets the title of the iframe
- `frameborder` controls the border of the iframe. It’s often good to set it to `0`
- `allow` and `allowfullscreen` control the permissions that the iframe has. Since the content is coming from another website, you can decide what it is allowed to do.

## Practice: Maps and Videos

<aside>
📺 Practice using the `<iframe>` element by embedding a map and a video into a page.

Access the exercise here [https://replit.com/team/tk5-web/Add-Embedded-Videos-and-Maps](https://replit.com/team/tk5-web/Add-Embedded-Videos-and-Maps) or below

</aside>

[https://replit.com/team/tk5-web/Add-Embedded-Videos-and-Maps](https://replit.com/team/tk5-web/Add-Embedded-Videos-and-Maps)

- **Further Reading**: iframe
    - See the [full documentation for iframe elements on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe)
    - Check out the [page on embedding technologies](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Other_embedding_technologies).
    - You can also [read more about iframe’s allow attribute on MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/Feature_Policy/Using_Feature_Policy#the_iframe_allow_attribute).

## Audio and Video

The `<audio>` tag is a built-in audio player. It lets you add audio content to your page, which the user can click to play.

```html
<audio controls src="/media/cc0-audio/t-rex-roar.mp3"></audio>
```

Similarly, the `<video>` element is a built-in video player.

```html
<video controls width="250" src="/media/cc0-videos/flower.webm"></video>
```

`src` and `width` are familiar, and work similarly to how they work for `img` and `iframe`.

The new attribute is `controls`. With `controls` added, the audio or video player will show the controls: play, pause, and volume. 

It’s usually good to show the controls, since otherwise the user won’t be able to control the video or audio on the page. Usually, if they can’t control the audio or video, they’ll close the page instead of letting things autoplay.

### src and source

Both audio and video tags allow specifying sources using the `<source>` tag instead of the `src`.

```html
<video controls width="250">
    <source src="/media/cc0-videos/flower.webm"
            type="video/webm">
    <source src="/media/cc0-videos/flower.mp4"
            type="video/mp4">
    Sorry, your browser doesn't support embedded videos.
</video>
```

Specifying multiple sources lets browser choose which kind of content they support. There’s fancy new formats like `.webm` that only some browsers support, so if you write your code like this, the users who have those browsers get the fancy formats, and other users still get a working page.

For more, check out the [MDN page on Video and Audio content](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Video_and_audio_content). Also see the [the video tag page on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video) and the [page for the audio tag](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio).

- **Further Exploration**: Multimedia and Embedding
    
    The [MDN guide on Multimedia and Embedding](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding) covers many ideas related to this lesson in more detail. 
    
    Also note that [the HTML Canvas element](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API) is used for programmatically drawn content.
    

---

<aside>
<img src="../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/man-in-hike.png" alt="../Lesson%200%20Learning%20With%20Kibo%206427d2f5f1ae4576a3b083dd8476d915/man-in-hike.png" width="40px" /> Next up: [Introduction to Javascript](3%202%20Introduction%20to%20JavaScript%206a69847787524590965d294e9ac4a11e.md)

</aside>