# Variables and Data Types

## Basics
JavaScript has many of the same features as other programming languages, like Python. In this lesson, you'll see a quick tour of those features.

* **Numbers** are represented by typing them literally, like `15` or `-3.14`
* **Strings** are enclosed in single or double quotes, like `"hello"` or `'world'`
* **Lists** are created and accessed using square brackets `[1,2,3]` and `numbers[0]`. (Lists are called 'Arrays' in JavaScript).

## Comments

* JavaScript comments for a single line start with `//`.
* JavaScript also allows multiline comments, starting with `/*` and ending with `*/`

```js
// This is a JavaScript comment
/* This is a JS comment
that can go across multiple lines
until the end of the comment
*/
```




## Variables

Variables are temporary holders of data that you can name and then reuse later in your program. They are created using a keyword, then a variable name, equals sign, and the value the variable will hold.

### Declaring and Initializing Variables
There are 3 keywords that can be used to declare variables, `let`, `var` and `const`. The `var` keyword was used in JavaScript between 1995 and 2015. Therefore, if you need your code to run on older browsers, you can use `var`, otherwise it is adivsed not to use it anymore. 

The `let` and `const` keywords on the other hand were added to JavaScript in 2015. The `const` is used to define variables that cannot change in a code; such variables are referred to as constants. For variables whose values can change, use the `let` keyword.

<aside>

Read more on the differences between `var` and `let` [here](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/Variables#a_note_about_var).

</aside>


The following code snippet demonstrates how to declare and initialize variables.

```js
// Line 1
const costPerHour = 10;

// Line 2
let hoursWorked = 8;

//Line 3
let totalCost = costPerHour * hoursWorked;
```

<aside>

**Explaining the code snippet**

The first line of code declares a variable called `costPerHour` using the `const` keyword.  This means the value of `10` allocated to the variable cannot be changed later in the code. Any attempt to chnage this value will result in an error: `TypeError: Assignment to constant variable.` A value of `10` is then assigned to the variable using the assignment operator `=`. This step is called initializing a variable. You always have to initialize the value of a constant at the point of declaring it.

The second line of code declares a variable called `hoursWorked`. The `let` keyword was used, therefore, the value stored by this variable can be changed. The variable is initialized to value of `8`. You can declare a variable without initializing it (if it is not a constant), but it is usually quicker to do both on the same line if you already know the value to be assigned.

The third line of code declares a variable called `total_cost`. We are assigning the value computed from two variables using the multiplication operator. You will learn more about arithmetic operators in the next lesson.

</aside>


## Try it
See what happens when you try to change a constant variable.

<iframe width="800" height="400" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=//The%20value%20of%20this%20variable%20can%20be%20changed%0Alet%20usingLet%20%3D%2010%3B%0Aconsole.log%28usingLet%29%0AusingLet%20%3D%2020%3B%0Aconsole.log%28usingLet%29%0A%0A//The%20value%20of%20this%20variable%20cannot%20be%20changed%0Aconst%20b%20%3D%205%3B%0Aconsole.log%28b%29%0Ab%20%3D%206%0Aconsole.log%28b%29&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=7&heapPrimitives=nevernest&origin=opt-frontend.js&py=js&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>

<p></p>


<details><summary><strong>Further Reading</strong></summary>

Read more on the [let](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/let), [var](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/var) and [const](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/const) keywords on the MDN Site.

</details>

## Identifiers
As with any programming language, there are rules that guide the naming of variables (and functions). The name you give to a variable is called an identifier.

The following guidelines apply in JavaScript:
* Your identifiers should only contain lowercase letters `a-z`, uppercase letters `A-Z`, numbers `0-9` and the underscore `_`.
* Start your identifier with a letter. Numbers are not allowed.
* Identifiers are case sensitive.
* Do not use keywords as identifiers, since they are reserved words with special meaning. For example you cannot use the keyword `let` as an identifier. 
* Use names that are intuitive - that describe the variable- to make your code clearer.

## Naming Conventions
As you saw with the variable names in the examples (such as`costPerHour`), JavaScript typically uses "camelCase" naming for variables and functions, instead of the "snake_case" that Python typically uses.

## Variable Types
Different types of values can be stored in variables. In our previous example, the `costPerHour` variable was storing a number. There are other types of variables apart from numbers, let us look at them.

<aside>

Note that JavaScript is a dynamically typed language. This means you do not have to declare the type of a variable like in some other programming langauges (such as Java). 

</aside>

### Numbers

Numbers are represented by typing them literally, like `15` or `-3.14`. Numbers can be either positive, like `15` or negative, like `-3.14`. Numbers can be without fractions (integers),  or have decimal places (floating point numbers and doubles). You can also use the scientific notation to represent numbers. For example, `3.458e7` is equivalent to 3.458 X 10<sup>7</sup>. Both integers and decimals are represented as `Number` in JavaScript. <p></p>

**<i>Remember to use the  'Prev/Next' button to visualize the code execution.</i>**


<iframe width="800" height="370" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=//This%20is%20a%20number%20in%20JS%0Aconsole.log%285%29%0A%0A/*%20This%20is%20another%20number%0Aas%20expected,%20the%20comment%20is%20not%20visible%20in%20the%20output*/%0Aconsole.log%283.458e7%29&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=2&heapPrimitives=nevernest&origin=opt-frontend.js&py=js&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>

### Strings

Strings are used to represent text. They are wrapped in single or double quotes like in Python. They can also be enclosed in backticks. Ensure you are consistent with your eneclosing characters, the quotes at the start and end of the string must match.

You can also escape special characters in strings by  using a backslash `\`, this is usually helpful when you need to use special characters in your strings. For example, let’s assume your string has a quote symbol in it.
A sample string is: `"I am learning", says Ade"`

```js
// This would give you a syntax error.
console.log("I am learning", says Ade");
```



```js
// This would not give you the first quotation symbol.
console.log("I am learning\", says Ade");

// This works fine
console.log("\"I am learning\", says Ade");

```

### Try it
<iframe width="800" height="370" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=//%20This%20would%20not%20give%20you%20the%20first%20quotation%20symbol.%0Aconsole.log%28%22I%20am%20learning%5C%22,%20says%20Ade%22%29%0A%0A//%20This%20works%20fine%0Aconsole.log%28%22%5C%22I%20am%20learning%5C%22,%20says%20Ade%22%29%0A%0A//%20This%20string%20is%20enclosed%20using%20backticks%0Aconsole.log%28%60%22I%20am%20learning%22,%20says%20Ade%60%29&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=3&heapPrimitives=nevernest&origin=opt-frontend.js&py=js&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>

You can also include special characters in your strings such as the tab `\t` and newline `\n`. If you need a backslash, simply use two backslash symbols `\\`.

### Some String Functions

### Booleans

Booleans are true/false values. They are used to test conditions. A Boolean variable can only have two values, either `true` or `false`.

```js
let myBoolean = true;
```

Other variable types include Arrays and Objects, which we will review at a later time in this course.

