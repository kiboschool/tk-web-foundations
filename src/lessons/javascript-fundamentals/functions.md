## Functions
Functions let us reuse code.
As you may have inferred from the examples, the function call syntax in JS is similar to Python. `console.log("hello")` passes the argument `"hello"` to the function `console.log`. The dot between `console` and `log` may be unfamiliar, but the function call works similarly to what you've used before.

To define a function in JavaScript, you can use the `function` keyword the way you would use `def` in Python. As with conditional statements and loops, there are more parentheses and brackets. After the `function` keyword, we specify the name of the function, followed by parameters in brackets. Then we have a pair of curly brackets. Inside the pair of curly brackets goes the body of our function.

```js
function greetPerson(name) {
  console.log("Hello, " + name)
}

greetPerson("Tolu") // logs "Hello, Tolu"
greetPerson("Rosemary") // logs "Hello, Rosemary"
greetPerson("Oluwaseyi") // logs "Hello, Oluwaseyi"
```
<aside>

This function accepts a name as a parameter and prints, `Hello` plus the name in the console.
</aside>

## Calling a Function
Remember, that when you define a function, it does not run/execute. To get a function to execute the lines of codes in it, we have to `call` or `invoke` the function.  We call a function the same way we do in Python, we specify the function name, and pass in our arguments inside the parenthesis.

### Naming your functions

The rules guiding how we name variables, also guides how we name functions. For example, we can't use keywords, we can't with a number and we cannot use special characters, except for the `$` and `_` symbols. JavaScript also uses camelCasing to name functions as previously mentioned.

### Function Parameters

Some functions require parameters and others do not. This depends on how the function was defined. If you define a function with empty parenthesis, then it does not require a parameter to be passed in. If parameters are defined, then when calling the funtion, you need to pass in those parameters. Our very useful `console.log()` function requires that we pass in a parameter which is displayed on the console. Similarly, the `greetPerson()` function we defined in a previous example, requires that we pass in a parameter.

#### Default Parameters
Some functions define optional parameters. By the name, this implies that it is optional to pass in this parameter at the point of calling a function. If the paramter is passed in, the function uses that value. On the other hand, if the parameter is not provided, a default value can be used by the function. So how do we define optional parameters.

If you're writing a function and want to support optional parameters, you can specify default values by adding `=` after the name of the parameter, followed by the default value. Let us modify our `greetPerson` example to see how that works.

<iframe width="800" height="300" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=function%20greetPerson%28name%20%3D%20%22there%22%29%20%7B%0A%20%20console.log%28%22Hello,%20%22%20%2B%20name%29%0A%7D%0A%0AgreetPerson%28%22Tolu%22%29%20//%20logs%20%22Hello,%20Tolu%22%0AgreetPerson%28%29&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=6&heapPrimitives=nevernest&origin=opt-frontend.js&py=js&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>


<aside>

Now if a parameter is supplied to our function, `Hello name`  is logged to the console, where `name` is the value of the parameter. Otherwise, we just say `Hello there`.

</aside>

****Watch Video on Default parameters**

<iframe width="560" height="315" src="https://www.youtube.com/embed/PkZNo7MFNFg?start=10388&end=10442" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</details>


## Anonymous Functions

Did you know you can create a function without a name, yes that is possible in JavaScript and such functions are called anonymous functions. Anonymous functions are used when a function receives another function as a parameter; the function parameter is usually passed as an anonymous function. It can also be used when you want to store a function in a variable. Let use see an example.

**Try it!**
```js
let twoArrays = function(array1, array2){
  return array1.concat(array2);
}
console.log(twoArrays)
console.log(twoArrays([1,2],[3,4]))
```
<iframe width="800" height="500" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=let%20twoArrays%20%3D%20function%28array1,%20array2%29%7B%0A%20%20return%20array1.concat%28array2%29%3B%0A%7D%0Aconsole.log%28twoArrays%29%0Aconsole.log%28twoArrays%28%5B1,2%5D,%5B3,4%5D%29%29%0A&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=6&heapPrimitives=nevernest&origin=opt-frontend.js&py=js&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>

<aside>

After a function has been stored in a variable, the variable can be used as a function.
If you study the image representation of the `twoArrays` variable, at the right side of the code snippet, you will notice that the variable actually stores the reference to a function.

To call the function, simple use the variable name, the way you would use a function name, as seen in line 5 of the code snippet.

</aside>

There are different other ways that functions can de declared and used. [Read more on JavaScript function definitions here](https://www.w3schools.com/js/js_function_definition.asp)


## Video on Arrow functions
Anonymous Functions even get more interesting with what is called the Arrow Functions. Arrow functions provides a short syntax for writing anonymous functions. With arrow functions, you don't need the `function` keyword, the `return` keyword, and the curly brackets.


**Learn more about arrow functions from this video.**
<iframe width="560" height="315" src="https://www.youtube.com/embed/PkZNo7MFNFg?start=10038&10384" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</aside>



## Conventions

As you saw with the `greetPerson` example, JavaScript typically uses "camelCase" naming for variables and functions, instead of the "snake_case" that Python typically uses.

JavaScript isn't whitespace-sensitive like Python is. It's still conventional to format your code so that blocks are indented, but it's not mandatory like Python.

The JavaScript interpreter in the browser will permit code that is formatted all on one line, like:

```js
function greetPerson(name) { console.log("Hello, " + name) }
```

This should be avoided, but it's sometimes helpful to know.
