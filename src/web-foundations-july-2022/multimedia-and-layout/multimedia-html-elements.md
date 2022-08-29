# Multimedia HTML Elements

*Estimated time: 30 Minutes*

---

In this lesson, we'll focus on creating interactions on your web pages. First, we’ll review the interactions you already know how to create. Then we’ll learn new HTML Elements that have built-in interactivity. 


## Review: Link, Details, Hover, Cursor, and Images

You have already seen elements and properties that help create interactivity.

### <a>

Perhaps the most fundamental interaction on the web is clicking a link.

<p class="codepen" data-height="300" data-default-tab="html,result" data-slug-hash="yLKXBdy" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/yLKXBdy">
  Link Demo</a>
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

### `<details>` and `<summary>`

You may have also seen the `<details>` and `<summary>` elements which creates a toggle element that shows the details when you click the summary.

<p class="codepen" data-height="300" data-default-tab="html,result" data-slug-hash="MWVogNa" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/MWVogNa">
  Untitled</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>


<details>
<summary>You've seen this combo in action!</summary>

We use the details and summary components in the lessons to hide away some of the content under a toggle.

There is always more underneath!

</details>


### hover and cursor

You’ve also learned a couple of CSS tricks that create some interactive feeling:

- Using the `:hover` selector to style elements when they are hovered (hover on MDN)
- Using the `cursor` property to style the cursor ([cursor on MDN](https://developer.mozilla.org/en-US/docs/Web/CSS/cursor))

<p class="codepen" data-height="300" data-default-tab="css,result" data-slug-hash="xxWrxKd" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/xxWrxKd">
  Untitled</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

These are basic kinds of interactivity, but don’t forget about them!

## Review: Images

Images aren’t exactly interactive, but a lot of the new interactive elements work similarly to how images work.

```html
<img src="valley-waterfall.png" />
```

The `src` attribute tells the browser where to find the image file, and the browser inserts the image at that spot in your site.

When styling images, you have to think about the width and height carefully so that you don’t break the **aspect ratio**. If an image is normally 100px by 100px, and you make it 50px by 200px in CSS, that will stretch out the image, and it will look bad.

When styling the new interactive elements, you’ll have to think about the same ideas: where’s the source url, and how do I style the element so that it looks right on the page.

# New interactive elements

## `<iframe>`

Inline frames allow you to embed content from another site into your site. You can use them to embed tons of different kinds of content. In this curriculum, we use tons of embedded content — YouTube and Loom videos, forms, and interactive coding exercises.

A typical iframe might look something like this, which embeds a video from youtube.

<p class="codepen" data-height="300" data-default-tab="html,result" data-slug-hash="vYRZYYr" data-user="rrcobb" style="height: 300px; box-sizing: border-box; display: flex; align-items: center; justify-content: center; border: 2px solid; margin: 1em 0; padding: 1em;">
  <span>See the Pen <a href="https://codepen.io/rrcobb/pen/vYRZYYr">
  Iframe Demo</a> by Rob Cobb (<a href="https://codepen.io/rrcobb">@rrcobb</a>)
  on <a href="https://codepen.io">CodePen</a>.</span>
</p>
<script async src="https://cpwebassets.codepen.io/assets/embed/ei.js"></script>

The `src`, `width` and `height` attributes are familiar from the `<img>` element. 

- `src` is the url where the browser should find the content
- `width` and `height` control the width and height of the element

The other attributes are new:

- `title` sets the title of the iframe
- `frameborder` controls the border of the iframe. It’s often good to set it to `0`
- `allow` and `allowfullscreen` control the permissions that the iframe has. Since the content is coming from another website, you can decide what it is allowed to do.

<details>
<summary><strong>Further Reading: iframe</strong></summary>

- See the [full documentation for iframe elements on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/iframe)
- Check out the [page on embedding technologies](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Other_embedding_technologies).
- You can also [read more about iframe’s allow attribute on MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/Feature_Policy/Using_Feature_Policy#the_iframe_allow_attribute).

</details>


## Practice: Maps and Videos

📺 Practice using the `<iframe>` element by embedding a map and a video into a page.

> [Access and attempt the exercise here](https://replit.com/team/web-foundations-july-2022/Add-Embedded-Videos-and-Maps)


## Audio and Video

The `<audio>` tag is a built-in audio player. It lets you add audio content to your page, which the user can click to play.

```html
<audio controls src="t-rex-roar.mp3"></audio>
```

Similarly, the `<video>` element is a built-in video player.

```html
<video controls width="250" src="flower.webm"></video>
```

`src` and `width` work the same way they do for `img` and `iframe`.

The new attribute is `controls`. With `controls` added, the audio or video player will show the controls: play, pause, and volume. 

It’s usually good to show the controls, since otherwise the user won’t be able to control the video or audio on the page. Usually, if they can’t control the audio or video, they’ll close the page instead of letting things autoplay.

### src and source

`<audio>` and `<video>` tags allow specifying sources using `<source>` tags instead of the `src` attribute.

```html
<video controls width="250">
    <source src="flower.webm" type="video/webm">
    <source src="flower.mp4" type="video/mp4">
</video>
```

Specifying multiple sources lets browser choose which kind of content to support. There’s fancy new formats like `.webm` that only some browsers can use, so if you write your code using `<source>`, users who have those browsers get the fancy new formats, and other users still get something that works for them.

For more, check out the [MDN page on Video and Audio content](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding/Video_and_audio_content). Also see the [the video tag page on MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video) and the [page for the audio tag](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/audio).

<details>

<summary><strong>Further Exploration: Multimedia and Embedding</strong></summary>

The [MDN guide on Multimedia and Embedding](https://developer.mozilla.org/en-US/docs/Learn/HTML/Multimedia_and_embedding) covers many ideas related to this lesson in more detail. 

Also note that [the HTML Canvas element](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API) is used for programmatically drawn content.

</details>
