# Conditions

In programming, you often want to make a decision based on the state of a variable. Given a condition, the program can take one or several actions. Similar to the Pyhton programming language, we have `if...else` construct and its several flavours to help the program make appropriate decisions.

Based on the assumption that you already know how conditions work from Python, this lesson will focus more on the JavaScript syntax. The `if...else` constructs work similarly in both programming languages, however the syntax is different.

<aside>

<strong>

Watch this video on `if` statements 
</strong>
</aside>
<iframe width="560" height="315" src="https://www.youtube.com/embed/PkZNo7MFNFg?start=4164" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## The `if...else` syntax

The basic `if...else` syntax in JavaScript:

```js

if (condition) {
    /* code to run, if the condition is true */
    
} else {
    /* code to run, if the condition is false */
}
```

If you do not want to execute any line of code if the condition is false, you can simple skip the `else` construct.

```js
if (condition){
    // code to run, if the condition is true
}
```
<aside>

Although you can leave out the curly brackets in the JavaScript syntax, it is better to have them in to ensure code readability.

</aside>


## More than two choices - `else if`
If you want to handle more than two choices, we do that with the `else if` construct.

##Put an example here..multiple of 3,5,7,9


## Nested if...else

It is also possible to nest `if...else` statements, that is, to have an `if...else` statement inside another one. See a sample synstx below.

```js
if (condition_1) {
    // this block runs if condition_1 is true
  if (condition_1a) {
    /* code to run, if the condition_1a is true */
  } else if (condition_1b) {
    /* code to run, if the condition_1b is true */
  }
}
```

<aside>
You can also test multiple conditions without using the nested...if. How? By using the logical operators - `AND`, `OR` and `NOT`.

Do you want to see how to do that, [check out this link](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/Building_blocks/conditionals#logical_operators_and_or_and_not).
</aside>

## The `switch` statement
Have you ever used the `switch` keyword in any programming task? If the only other language you have learned is Python, chances are that you have never come across the `switch` construct, because it does not exist in Python.

With the `if...else` construct, the syntax can feel a little cumbersome, if you have a larger number of choices possible. In such cases, the `switch` statement might be a better option. If you want to check the value of a variable or expression and based on the value, make one of several choices, then `switch` comes in really handy.

<aside><strong>Watch this video on switch statements </strong></aside>
<iframe width="560" height="315" src="https://www.youtube.com/embed/PkZNo7MFNFg?start=5536" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</details>
#Complete switch with explanation and example