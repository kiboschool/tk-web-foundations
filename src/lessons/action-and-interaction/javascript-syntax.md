# JavaScript Syntax

JavaScript has many of the same features as other programming languages, like Python. In this lesson, you'll see a quick tour of those features.

> This lesson assumes that you are coming to JavaScript with some experience writing code in Python. It attempts to translate some of the concepts and syntax you're familiar with from Python into their JS equivalents.

## Basics and Data Types

JavaScript evaluates statements line by line.  For many of the basics, the syntax is very similar to Python.

* **Numbers** are represented by typing them literally, like `15` or `-3.14`
* **Strings** are enclosed in single or double quotes, like `"hello"` or `'world'`
* **Lists** are created and accessed using square brackets `[1,2,3]` and `numbers[0]`. (Lists are called 'Arrays' in JavaScript).

## Comments

* Python comments start with `#`, JavaScript comments start with `//`.
* JavaScript also allows multiline comments, starting with `/*` and ending with `*/`

```js
// This is a JavaScript comment
/* This is a JS comment
that can go across multiple lines
until the end of the comment
*/
```

## Variables

Variables play the same role in JavaScript and Python. They are temporary holders of data that you can name and then reuse later in your program.

The syntax is slightly different. In JavaScript, you have to use a keyword before your variable:

```js
let x = 10
let name = "Wasiu"
let numbers = [1,2,3]
```

There are two other keywords (`var` and `const`) that also work for creating variables that behave slightly differently, but for now you should be okay just using `let`.

## Conditions

Like Python, JS uses the keyword `if` for conditional statements. However, the syntax for is a bit different:

```js
if (x < 100) {
  console.log("it was less than one hundred")
} else {
  console.log("it was one hundred or more")
}
```

The condition is wrapped in parentheses `()`, and the statements are wrapped in curly braces `{}`. There is no colon (`:`) after the condition, like there would be in Python.

## Loops

JavaScript can loop through an array using a similar syntax to how Python can loop through a List.

```js
let numbers = [1,2,3]
for (let number in numbers) {
  console.log(number)
}
```

Like for conditional statements, JavaScript wraps the initialization in parens `()` and the body of the loop in curly braces `{}`.

Unlike Python, JavaScript does not have the `range` function. The syntax for looping over a range is much uglier: the three-statement for loop.

Here's an example, looping from 1 to 99.

```js
for (let i = 0; i < 100; i++) {
  console.log(i)
}
```

## Functions

As you may have inferred from the examples, the function call syntax in JS is similar to Python. `console.log("hello")` passes the argument `"hello"` to the function `console.log`. The dot between `console` and `log` may be unfamiliar, but the function call works similarly to what you've used before.

To define a function in JavaScript, you can use the `function` keyword the way you would use `def` in Python. As with conditional statements and loops, there are more parentheses and brackets.

```js
function greetPerson(name) {
  console.log("Hello, " + name)
}

greetPerson("Tolu") // logs "Hello, Tolu"
greetPerson("Rosemary") // logs "Hello, Rosemary"
greetPerson("Oluwaseyi") // logs "Hello, Oluwaseyi"
```

There are more ways to create functions in JavaScript, but that's all you need to know for now.

## Objects

JavaScript's equivalent for Python's dictionaries are called _objects_. They also use the curly brace syntax to create them and the square brackets to access items inside.

```js
let party = {
  "name": "Birthday Party",
  "date": "November 20",
  "guests": ["Mom", "Dad", "Brother"]
}
console.log(party["date"]) // November 20
```

JavaScript uses objects even more heavily than Python uses Dictionaries, but we won't go any deeper in this class.

## Conventions

As you saw with the `greetPerson` example, JavaScript typically uses "camelCase" naming for variables and functions, instead of the "snake_case" that Python typically uses.

JavaScript isn't whitespace-sensitive like Python is. It's still conventional to format your code so that blocks are indented, but it's not mandatory like Python.

The JavaScript interpreter in the browser will permit code that is formatted all on one line, like:

```js
function greetPerson(name) { console.log("Hello, " + name) }
```

This should be avoided, but it's sometimes helpful to know.

## Summary

This was a whirlwind tour through the language, and there's tons of stuff that it didn't cover. The important things to remember are:

* Python and JavaScript have similar syntax, but not the same.
* If you can read and write Python, you can learn to read and write JavaScript
* JavaScript uses `()` and `{}` for conditions, loops, and functions
* JavaScript has different conventions than Python

## Further Reading: JS vs Python

> Read more about the [differences between JS and Python on FreeCodeCamp](https://www.freecodecamp.org/news/python-vs-javascript-what-are-the-key-differences-between-the-two-popular-programming-languages/)
