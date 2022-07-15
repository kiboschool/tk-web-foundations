# Positioning

*Estimated time: 30 minutes*

---

# Positioning

The `position` property can break Normal flow. Unlike `flex`, which makes a container where the normal flow rules don’t apply, `position` can take an individual element out of the flow.

There are five values for `position`.

```css
position: static;
position: relative;
position: absolute;
position: fixed;
position: sticky;
```

*See the [MDN docs for `position`](https://developer.mozilla.org/en-US/docs/Web/CSS/position) for more, and for an interactive example.*

### Static

`static` is how elements are positioned by default. The normal flow rules apply.

```css
position: static;
```

![62D93D84-34B0-4C9E-B9B8-32F6F3C34C73-2762-00009B320F016B43.png](/web-foundations-july-2022/web-design/positioning/d93d84-34b0-4c9e-b9b8-32f6f3c34c73-2762-00009b320f016b43.png)

### Relative

`relative` means the element shifts from where it would normally be positioned.

`top`, `bottom`, `left`, and `right` are used with position to specify where to move the positioned element.

```css
position: relative;
top: 40px; left: 40px;
```

The yellow box is shifted 40px from the top and 40px from the left of where it started.

![F5257C41-514D-417E-9AEB-F1CAA9231515-2762-00009B3A32F44A06.png](/web-foundations-july-2022/web-design/positioning/f5257c41-514d-417e-9aeb-f1caa9231515-2762-00009b3a32f44a06.png)

### Absolute

Absolute positioned elements are out of the flow.

```css
position: absolute;
top: 40px; left: 40px;
```

The yellow box is out of the normal flow, so the blue boxes act as if it isn’t there.

The `top` and `left` values are calculated from the parent element, instead of where the box started.

![03F9764F-0B5B-483E-ACB9-84B186ED4805-2762-00009B5F3681986B.png](/web-foundations-july-2022/web-design/positioning/f9764f-0b5b-483e-acb9-84b186ed4805-2762-00009b5f3681986b.png)

### Fixed

Fixed position means that as you scroll, the element stays in the same spot on the screen, within the scroll window. 

Like `absolute`, `fixed` elements are removed from the flow, and they calculate the top and right values from the containing element.

```css
position: absolute;
top: 80px; left: 10px;
```

Scroll the example to see how the block stays in place while the rest of the page scrolls by.

[https://yari-demos.prod.mdn.mozit.cloud/en-US/docs/Web/CSS/position/_sample_.fixed_positioning.html](https://yari-demos.prod.mdn.mozit.cloud/en-US/docs/Web/CSS/position/_sample_.fixed_positioning.html)

### Sticky

`position: sticky` is really cool. It works like `relative`, until the element reaches the edge of the scroll window. 

Then, the `sticky` element is ‘stuck’ to the top of the scroll window, until you scroll past the end of what it’s contained in.

```css
position: sticky;
```

Scroll the example to see the effect.

[https://yari-demos.prod.mdn.mozit.cloud/en-US/docs/Learn/CSS/CSS_layout/Positioning/_sample_.basic_example.html](https://yari-demos.prod.mdn.mozit.cloud/en-US/docs/Learn/CSS/CSS_layout/Positioning/_sample_.basic_example.html)

### Further Exploration: Position

[MDN’s page on positioning](https://developer.mozilla.org/en-US/docs/Learn/CSS/CSS_layout/Positioning) provides more detail on the `position` property and how to use it.

## Practice: Absolute Robot

<aside>

🤖 **The face has fallen off the robot!**

Practice using the `top`, `left`, and `width` CSS properties and `position: absolute` to create a zany and fun face on the robot.

Access the repl here: <div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://replit.com/team/tk5-web/25-Absolute-Position-Make-a-Robot" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div> or below

</aside>

<div style="position: relative; padding-bottom: 56.25%; height: 0;"><iframe src="https://replit.com/team/tk5-web/25-Absolute-Position-Make-a-Robot" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>