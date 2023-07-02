# Operators
There are different types of operators in JavaScript. Some operators are unary operators, they work on a single operand. Others are binary operators, they require two operands. There is also a ternary operator in JavaScript. Ternary operators require three operands. Next let's review these operators.

<!-- In the previous lesson, we saw the `typeof` operator, which is used to check the datatype of a variable. It is a <i>unary</i> operator because it takes only one value or operand. Some other operators take two values, they are called __binary__ operators. There are operators that can be both binary and unary operators, such as the `minus` operator, which we will review shortly.-->

## The `typeof` operator

There is an operator in JavaScript called the `typeof` operator. It is used to check the data type of a variable.
To use it, you specify the name of the variable in parentheses after the keyword as in `typeof(variableName)`. It is a unary operator.

<iframe width="800" height="400" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=let%20a%20%3D%20%22Kibo%22%3B%0Alet%20b%20%3D%205%3B%0Alet%20c%20%3D%208.9%3B%0Alet%20d%20%3D%20true%3B%0A%0Aconsole.log%28typeof%28a%29%29%3B%0Aconsole.log%28typeof%28b%29%29%3B%0Aconsole.log%28typeof%28c%29%29%3B%0Aconsole.log%28typeof%28d%29%29%3B&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=8&heapPrimitives=nevernest&origin=opt-frontend.js&py=js&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>



 
## Arithmetic Operators
These operators are used to carry out mathematical operations.
* **Addition:** The `+` operator is used to add two numbers together: `16 + 7`.
* **Subtraction:** The `-` operator subtracts the right number from the left: `9 - 8`.
* **Multiplication:** The `*` operator multiplies two numbers together: `9 * 5`.
* **Division:** The `/` operator divides the left number by the right number: `54 / 5`.
* **Remainder (modulo):** The `%` operator returns the remainder after a division: `18 % 3`.
* **Exponent:** The `**` operator, also known as the power operator, raises a base number to the exponent: `3 ** 2 = 9`

**Try out these operators on your console.**

### Operator Precedence
With respect to the arithmetic operators, the exponent operator has the highest level of precedence. Division `/` and multiplication `*` come next, and they have a higher precedence to addition and subtraction (which are both on the same level of precedence). When operators on the same level of precedence are used, the order of execution is from left to right.

**Read more on Operator Precedence [here](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/Math#operator_precedence)**

<aside> 
Always use parenthesis to make things clearer: `(3+6)*8`. Try this mathematical expression with and without the parentheses to see the difference.
When you do not use parentheses, the precedence of operators is used to determine the order of execution

</aside>


<!-- 45%4
## Try it

Special numbers in JavaScript
Infinity
-Infinity and NaN


The + operator can be used to concatenate, i.e., join strings.
“le”+”ar”+”ni”+”ng”
Copy the code and try in your console
-->
## Increment and Decrement Operators
JavaScript also has the increment and decrement operators to repeatedly add or subtract one from a numeric value.

**Try it** in the console:
```js
let x = 9;
let y = 8;
x++;
y--
console.log(x)
console.log(y)
```

## Assignment Operators

Assignment operators are used to assign a value to a variable. We have seen how to use `=` severally, it assigns the value on the right to the variable on the left. Apart from the basic `=`, other complex assignment operators exist. 

For example, the __addition assignment__ operator, `+=`, it adds the values on the right to the variable on the left, and returns the new value. In like manner, we have the __subtraction assignment__ operator, `-=`, the __multiplication assignment__ operator, `*=`, and the __division assignment__ operator, `/=`.

**Try it!**
```js
let x = 8;
console.log(x += 8)
console.log(x -= 6)
console.log(x *= 4)
console.log(x /= 2)
```
## Comparison Operators
Similar to the Python programming language, there are several comparison operators in JavaScript that can be used to run true/false tests. They always return one of the two Boolean values: `true` or `false`. The code snippet below shows examples<p></p>. 

<iframe width="800" height="500" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=//%20Uppercase%20vs%20lowercase%0Aconsole.log%28%22Kibo%22%20%3D%3D%20%22kibo%22%29%3B%0Aconsole.log%28%22Kibo%22%20%3D%3D%20%22Kibo%22%29%3B%0Aconsole.log%28%22%5Cn%22%29%3B%0A%0A//%20The%20%3D%3D%20operator%20does%20not%20check%20for%20difference%20in%20the%20data%20types%0Aconsole.log%28%225%22%20%3D%3D%205%29%3B%0A//%20The%20%3D%3D%3D%20checks%20for%20difference%20in%20the%20data%20types%0Aconsole.log%28%225%22%20%3D%3D%3D%205%29%3B%0A%0Aconsole.log%28%22%5Cn%22%29%3B%0Aconsole.log%287%20%3E%209%29%3B%0Aconsole.log%288%20%3C%3D%2010%29%3B&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=8&heapPrimitives=nevernest&origin=opt-frontend.js&py=js&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>

## Logical Operators
Logical operators are used to compare Boolean values. JavaScript supports three comparison operators, namely: `and`, `or`, and `and`. They are binary operators, with the exception of the `not` operator which is a unary operator.

<p></p>

### The logical `and` operator
The `&&` operator represents the logical `and`. It returns `true` only if both values given to it are true, otherwise it returns `false`.


<iframe width="800" height="280" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=console.log%28true%20%26%26%20true%29%3B%0Aconsole.log%28false%20%26%26%20true%29%3B%0Aconsole.log%28false%20%26%26%20false%29%3B&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=3&heapPrimitives=nevernest&origin=opt-frontend.js&py=js&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>

<p></p>

### The logical `or` operator
The  `||` represents logical `or`. It returns `true` if any of the operands given to it are true. It only returns `false` when both operands given to it are false.

<iframe width="800" height="280" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=console.log%28true%20%7C%7C%20true%29%3B%0Aconsole.log%28false%20%7C%7C%20true%29%3B%0Aconsole.log%28false%20%7C%7C%20false%29%3B&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=3&heapPrimitives=nevernest&origin=opt-frontend.js&py=js&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>

### The logical `not` operator

The `!`, represents the logical `not`. It simply flips or negates the value given to it.

<iframe width="800" height="280" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=console.log%28!%20true%29%3B%0Aconsole.log%28!%20false%29%3B&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=2&heapPrimitives=nevernest&origin=opt-frontend.js&py=js&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>

<p></p>

### The `conditional` operator
The JavaScript language has one ternary operator. A ternary operator is one that operates on three operands (values). It is called the `conditional` operator. Take a look at the code snippet below to see how it operates.

```js
console.log(true ? "it's true" : "it's false" )
//it's true

console.log(false ? "it's true" : "it's false" )
//it's false

console.log(true ? 1 : 2 )
//Your turn. What do you think the output will

```

 The value on the
left of the question mark “picks” which of the other two values will come out.
When it is true, it chooses the middle value, and when it is false, it chooses the
value on the right.

<aside>

There are several other JavaScript operators that exist. [Here's a list of them](https://www.w3schools.com/js/js_precedence.asp). The link also contains details on the precedence of all the operators.

Practice the arithmetic operators by drawing different boxes [here](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/Math#active_learning_sizing_a_canvas_box).
</aside>