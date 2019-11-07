# Shiny JS (ES6 Features & More)

## Outline

- Functions - Anonymous Functions vs. Named Functions - Function Expressions vs. Function Declarations - Callback Functions & ES6 Iterators
- Scope
- Hoisting
- Class Syntax & `this`
- Destructuring & Dynamic Object Keys
- Key Value Assignment Shortcut
- Spread Operator

## Functions

### Anonymous Functions vs. Named Functions

```javascript
// Named Function
function iHaveAName() {
	console.log('hi')
}

// Anonymous Function
function() {
	console.log('hi')
}

// Anonymous Function within .map
[1, 2, 3].map(function(num) {
	return num + 1
})
```

### Function Expressions vs. Function Declarations

```javascript
// Function Expression
const myFunc = () => console.log('hi');

// Function Declaration **always starts with the function keyword**
function myFunc() {
  console.log('hi');
}
```

### Passing Functions Around as Arguments (Callbacks) & ES6 Iterators (map, forEach, find)

```javascript
const names = ['dracular', 'voldemort', 'the hash slinging slasher'];

names.map(name => name.toUpperCase()); // ["DRACULAR", "VOLDEMORT", "THE HASH SLINGING SLASHER"]
names.forEach(name => console.log(name)); // logs each name
names.find(name => name.incudes('volde')); // "voldemort"
```

## Scope
- Each function, when invoked, creates a new scope
- Block statements: Contrary to the `var` keyword, the `let` and `const` keywords support the declaration of local scope inside block statements.

```javascript
// Global Scope
function someFunction() {
  // Local Scope #1
  function someOtherFunction() {
    // Local Scope #2
  }
}

// Global Scope
function anotherFunction() {
  // Local Scope #3
}
// Global Scope

if (true) {
  var youCanAccessMeOutside = 'Hi from within the block';
  let dontTryToAccessMeOutside = "This won't work";
  const iAlsoStayWithinTheBlock = 'Staying here';
}

youCanAccessMeOutside; // 'Hi from within the block'
dontTryToAccessMeOutside; // ReferenceError: variable is not defined
iAlsoStayWithinTheBlock; // ReferenceError: variable is not defined
```

## Hoisting
- Declarations are hoisted (functions & var variables)
- Neither `let`, `const` nor function expressions are hoisted

```javascript
hoistMe();

function hoistMe() {
  console.log('Hi from the function');
}

// This ↓ is the assignment which does not get hoisted
meToo = 'Hi from the variable';
console.log(meToo); // 'Hi from the variable'
// This ↓ is the declaration, that's why it's ok to put it at the bottom
var meToo;

// 'let' and 'const' variables are not hoisted in the same way that 'var' variables are
// Function expressions are also NOT hoisted
```

## Class Syntax & `this`

_If a function belongs to an object, it’s called a method_
_context is what the value of `this` is_

- Every class can have attributes (properties/variables) and abilities (methods)
- `this` & functions 
  - Every function DECLARATION is given it’s own context of `this`
  - With an arrow function the `this` gets bound to whatever the outer `this` is (arrow functions don’t have an own internal `this`)
  - `this` references the object that is executing the current function
  - If the function (called a method) is part of an object, `this` references the object itself
  - If the function is a regular function (not part of an object), it references the global object which in browsers is the window object (or is `undefined` in strict mode)


---

All content inside of a class is executed in strict mode, that's why we get an `undefined` if we declare a function (not method) inside of the method of a class
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Classes#Strict_mode

The value passed as `this` to a function in strict mode is not forced into being an object (a.k.a. "boxed"). 

For a normal function, this is always an object: either the provided object if called with an object-valued this; the value, boxed, if called with a Boolean, string, or number this; or the global object if called with an undefined or null this. (Use call, apply, or bind to specify a particular this.)

Not only is automatic boxing a performance cost, but exposing the global object in browsers is a security hazard because the global object provides access to functionality that "secure" JavaScript environments must restrict. Thus for a strict mode function, the specified this is not boxed into an object, and if unspecified, this will be undefined:

```javascript
'use strict';
function fun() { return this; }
console.log(fun() === undefined); // true
```
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Strict_mode#Securing_JavaScript

In strict mode if you call a function _not_ through a property reference and without specifying what this should be, it’s undefined.
[javascript - Accessing this in a forEach loop results in undefined - Stack Overflow](https://stackoverflow.com/questions/19445599/accessing-this-in-a-foreach-loop-results-in-undefined)

---

```javascript
// method -> obj
// function -> global window

function whatIsThis() {
  // this refers to the global window object
  console.log(this);
}

class Person {
  constructor() {
    this.age = 100;
    this.hobbies = ['swim', 'dance', 'take walks'];
	}
	
  sayHi() {
    // in here `this`  is the current person object
    this.hobbies.forEach(function(hobby) {
      // in here `this`  is the window object (or `undefined` because of strict mode)
      console.log(`I like to ${hobby} at ${this.age}.`);
		});
		
		this.hobbies.forEach(hobby => {
			// with an arrow function, the `this` gets bound to the outer `this` 
      console.log(`I like to ${hobby} at ${this.age}.`);
    });
  }
}

var bob = new Person();
bob.sayHi();
```

### Similarities to Ruby:
- The **constructor** in JS is similar to the **initialize** method in Ruby
- Attributes within the constructor in JS are similar to the instance variables we set in our initialize method in Ruby
- The (instance) **methods** of a class would be the equivalent to Ruby **instance methods**
- **Static methods** in JS are similar to **class methods** in Ruby

## Destructuring & Dynamic Object Keys
```javascript
const spaceship = {
  pilot: 'elon musk',
  guidance: 'marc zucc',
  chef: 'gordon ramsay'
}

// How can we access the pilot inside the spaceship?
// 1. Dot notation
const pilot = spaceship.pilot
// 2. Braket notation
const pilot = spaceship['pilot']

// 3. Destructuring
const { pilot, chef } = spaceship

console.log(pilot) // 'elon musk'
console.log(chef) // 'gordon ramsay'

// More about braket notation (dynamic object keys)
// If we need to use a variable as a key we have to use braket notation to retrieve the value
const pilot = 'pilot'
spaceship[pilot]

const jobs = ['pilot', 'guidance', 'chef']
jobs.forEach(job => console.log(spaceship[job]))
```

## Key Value Assignment Shortcut
- If the name of the key is the same as the name of the variable we want to assign to that key we can use this shortcut

```JavaScript
const pizza = 'pepperoni'
const restaurant = 'Awesome SF Pizza'

// The long way
const pizzaObj = {
  pizza: pizza,
  restaurant: restaurant
}

// Shortcut
const pizzaObj2 = { pizza, restaurant }
```

## Spread Operator
```javascript
// Spread operator with arrays
const nums = [1, 2, 3];

const mergedArray = [...nums, 4, 5]; // [1, 2, 3, 4, 5]
// If we don't use the spread operator we end up with a nested array
const nestedArray = [nums, 4, 5]; // [[1, 2, 3], 4, 5]

// Spread operator with objects
const pepperoni = { toping: 'Pepperoni' };
const pizza = {
  ...pepperoni,
  price: '$8',
  size: 'medium'
};
```
