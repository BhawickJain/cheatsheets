- what they do
- what the return (or evaluation) type is
- (if applicable) what the argument types are`Array.prototype.shift`

`String.prototype.includes`
`String.prototype.substring`
`String.prototype.slice`
`String.prototype.repeat`

## object keys

Property accessors are always of string type [ref](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Property_Accessors#bracket_notation)
```javaScript
// when iterating through keys, those keys are always string

const arr = [1, 2, 3]
for (const idx in arr) {
  console.log(idx)
}
// > 0
// > 1
// > 2

for (const idx in arr) {
  console.log(typeof idx)
}
// > string
// > string
// > string

// unless you use .forEach

arr.forEach((_, idx) => console.log(idx))
// > 0
// > 1
// > 2

arr.forEach((_, idx) => console.log(typeof idx))
// > number
// > number
// > number

// ES6 provides a .entries method to Arrays
// this avoids needing c-like for loop
for (const [i, obj] of arr.entries()) {
    console.log(i, obj)
}
// > 0
// > 1
// > 2

for (const [i, obj] of arr.entries()) {
    console.log(typeof i, obj)
}
// > number
// > number
// > number

// c-like for loop for completeness
for (let i=0; i < arr.length; i++) {
    console.log(i, arr[i])
}

for (let i=0; i < arr.length; i++) {
    console.log(typeof i, arr[i])
}
```

## declarations

All code, even the main code is wrapped in an imaginary function. `var` declarations at initialised when its parent function is called. Their names are instantiated without running the expressions and before the function is run. `let` and `const` declarations are instantiated at the parent block -- the indentaed or `{}` scoped code.

```Javascript
if (true) {
  var x = 1
}
 console.log (x) // 1
```

`var` runs just after the function is called, and only get assigned in the block. However it does not get destroyed exiting the block and remaining available with its new value throughout the function.

```Javascript
console.log (x) // undefined but not error

if (true) {
  var x = 1
}
console.log (x) // 1
```

`var` variables are instantiaed in name before any run is executed in the function. This means before their first assignement expresssion, they are `undefined` but with no error. `let` variables literally don't exist, even their name is not known yet until the first `let` expression is executed. This is why an `undefined error` is thrown.

```Javascript
console.log (x) // undefined but _error_

if (true) {
  let x = 1
}
console.log (x) // 1
```

```Javascript
if (true) {
  let x = 1
}
 console.log (x) // undefined
```

`let` only run when entering the block, the variable `x` is destroyed when exiting the block.

```Javascript
function ex() {
  var x = 1
}
 console.log (x) // undefined
```

Since the var is wrapped in a function, the main function is not its parent. This means `x` is created and destroyed as the function is called and returned.

## high-order functions

Higher-order functions are function that take other functions as argument for their parameters.

`.map`, `.filter` and `.foreach` in arrays objects are higher-order functions. You can give them an anonymous arrow function that take an element of an array. This is then applied to each element.

```Javascript
let listOfNumbers = [1,2,3,4]

// returns an array of same dimensions
let mapped = listOfNumbers.map(() => 1)
console.log(mapped)


// returns an array based on items that are
// true according to the anonymous function.
let filters = listOfNumbers.filter((x) => x > 2)
console.log(filters)

// select items in an array with filter
let select = listOfNumbers.filter((a) => a > 2)
// do something with the selected
let square = select.map((x) => x**2)
console.log(square)

// for each does not return anything
listOfNumbers.foreach((a) => console.log(a))

// if any item holds condition true
listOfNumers.some((el) => el % 2 === 0)
```

## if statements

```Javascript
let num = 1
// Multiline
if (num == 1) {
  console.log(1)
}

num = 2
if (num == 2) console.log(2);
```

## functions

```Javascript

// traditional named function
function add(number1, number2) {
  return number1 + number2
}

// named arrow function with explicit return
// best for non-method functions
// as they don't have their scope
const add = (number1, number2) => {
  return number1 + number2
}

// single line arrow function with no explicit return
const add = (number1, number2) => number1 + number2

// arrow can omit return, object
// and parameter parentheses
const square = number1 => number1**2

// the `{}` in arrow functions don't give the
// variables inside their own scope means,
// `this.something` does not make sense. It is
// why arrow functions are not used for
// defining methods

```

Broken example from [MDN](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Functions/Arrow_functions)

```Javascript
// ----------------------
// Traditional Example
// ----------------------
// A simplistic object with its very own "this".
var obj = {
    num: 100
}

// Setting "num" on window to show how it is NOT used.
window.num = 2020; // yikes!

// A simple traditional function to operate on "this"
var add = function (a, b, c) {
  return this.num + a + b + c;
}

// call
var result = add.call(obj, 1, 2, 3) // establishing the scope as "obj"
console.log(result) // result 106

// apply
const arr = [1, 2, 3]
var result = add.apply(obj, arr) // establishing the scope as "obj"
console.log(result) // result 106

// bind
var result = add.bind(obj) // establishing the scope as "obj"
console.log(result(1, 2, 3)) // result 106

```

```Javascript
// ----------------------
// Arrow Example
// ----------------------

// A simplistic object with its very own "this".
var obj = {
    num: 100
}

// Setting "num" on window to show how it gets picked up.
window.num = 2020; // yikes!

// Arrow Function
var add = (a, b, c) => this.num + a + b + c;

// call
console.log(add.call(obj, 1, 2, 3)) // result 2026

// apply
const arr = [1, 2, 3]
console.log(add.apply(obj, arr)) // result 2026

// bind
const bound = add.bind(obj)
console.log(bound(1, 2, 3)) // result 2026

```
