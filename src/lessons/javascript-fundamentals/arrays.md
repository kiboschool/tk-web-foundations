# Arrays

An array is a variable that can hold more than one item, it holds a list of items. They are "list-like" objects. An array can store diffrent types of variables, including numbers, strings, objects and even other arrays.

<aside> 

**Watch the section of this video on Arrays (ends at 41:43)** 
</aside>

<iframe width="560" height="315" src="https://www.youtube.com/embed/PkZNo7MFNFg?start=2446" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

</details>

## Declaring an Array
Let us declare an array storing a list of names.

`const names = ['Sade', 'Jimmy', 'Frank', 'Willheimena', 'Asante', 'Josephine']`.

This array shown stores a list of names. How many names are stored in the array? 

<aside>

Arrays are usually declared using the `const` keyword. Can you guess why?
There are several implications of declaring an array as a constant. For example, the array must be intitialized when it declared, and the reference to the array cannot be changed. See this [page to get more details](https://www.w3schools.com/js/js_array_const.asp).

</aside>


## The Length of an Array

We can find the length of an array by using the length property. There are six items in this array.

**Try it!**
```js
const names = ['Sade', 'Jimmy', 'Frank', 'Willheimena', 'Asante', 'Josephine']
let length = names.length;
console.log(length);
```

## Accessing an Array
The items in an array are numbered, starting from `0`. This number is called an index. We access arrays using their index. We specify the index in a pair of square brackets, after specifying the name of the array. For example, `names[2]`, will return `Frank`. Remember that we start counting the index of the array from `0`.

```js
const names = ['Sade', 'Jimmy', 'Frank', 'Willheimena', 'Asante', 'Josephine'];
console.log(names[2]);
```

## Modifying an Array
We can modify the content of an array using it's index number and the assignment operator. Let's see how that works. Let us change the name `Sade` to `Folasade`. First we need to get it's index, what is the index of `Sade` in the `names` array?

```js
const names = ['Sade', 'Jimmy', 'Frank', 'Willheimena', 'Asante', 'Josephine'];
names[0] = "Folasade";

//Let's print the entire array to see the change
console.log(names)
```

## Multidimensional Array

When you have an array inside another array, it is called a multidimensional array. We can access the items in a multidimensional array by chaining square brackets together. Let's see an example.

<iframe width="800" height="500" frameborder="0" src="https://pythontutor.com/iframe-embed.html#code=//%20A%20multidimensional%20array%0Aconst%20multiArray%20%3D%20%5B%22string%22,%2095,%20%5B5,%207,%208%5D,%20true%5D%3B%0Aconsole.log%28multiArray%5B2%5D%29%3B%0A%0Alet%20value%20%3D%20multiArray%5B2%5D%5B2%5D%3B%0Aconsole.log%28value%29%3B&codeDivHeight=400&codeDivWidth=350&cumulative=false&curInstr=4&heapPrimitives=nevernest&origin=opt-frontend.js&py=js&rawInputLstJSON=%5B%5D&textReferences=false"> </iframe>

<aside>

As seen in the code snippet, the item on index 2 is an array, so we can access it by saying `multiArray[2]`. Now to access the elements inside this inner array, we simply specify another index, which will point to items in the inner array, and so `multiArray[2][2]` returns `8`.

Note that we can have arrays inside arrays, nested upto several levels.

</aside>

## Array Methods
Different array methods exist to manipulate and work with arrays. For example, to find the inex of items in an array, use the `indexOf()` function. You simply specify the value of the item, if that item exists, the index is returned, otherwise, `-1` is returned.

**Try it!**
```js
const names = ['Sade', 'Jimmy', 'Frank', 'Willheimena', 'Asante', 'Josephine'];

//this returns 5
lastName = names.indexOf("Josephine");
console.log(lastName);

//this returns -1
noName = names.indexOf('Salewa');
console.log(noName);

```

Other array methods include:
* `push()`: to add items to the end of the array.
* `unshift()`: to add an item to the start of the array.
* `pop()`: to remove the last item from the array.
* `shift()`: to remove the first item from the array.
* `splice()`: to remove an item from a particular position, using its index.
* `split()`: convert a string to an array.

**Find examples on how to use these methods [here](https://developer.mozilla.org/en-US/docs/Learn/JavaScript/First_steps/Arrays#adding_items).**