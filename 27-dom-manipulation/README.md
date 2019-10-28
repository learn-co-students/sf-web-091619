# JavaScript Basics: DOM Manipulation

## JavaScript Basics
- Variables (`const`, `let`, `var`)
- Comments
	```JavaScript
	// Single line comment

	/*
	Multiline comment
	*/
	```
- Functions (watch for the `return` keyword!)
	```javascript
	function add(a, b) {
		return a + b
	}

	add(2, 3)
	```
- Operators (`+`, `-`, `*`, `/`, `=`, `===`, `!==`, `==`, `!=`)
- Conditionals
	```JavaScript
	let name = "Bob"
	if(name === "Bob") {
		alert("Hi Bob")
	} else {
		alert("Hi Stranger")
	}
	```

## HTML & JS
- The script tag `<script src=“main.js”></script>` (order matters or we have to use `DOMContentLoaded` etc.)

## Debugging
- Browser console
- `console.log('Hello World')`
- `debugger` /  breakpoints

## DOM Manipulation
### The DOM
- `The Document Object Model (DOM) is a programming interface for HTML and XML documents. It represents the page so that programs can change the document structure, style, and content. The DOM represents the document as nodes and objects. That way, programming languages can connect to the page.` ([Introduction to the DOM - Web APIs | MDN](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Introduction))

### Grabbing Elements
- By ID
	- `getElementById('my-id')`
	- `document.querySelector(‘#unique-element')`
- By Class
	- `document.querySelectorAll('.some-shared-class') `
	- `document.getElementsByClassName('some-shared-class')`
- By Tag
	- `document.getElementsByTagName('body')[0] `
	- `document.getElementById('unique-element') `

### Modifying HTML and CSS
- `const element = document.createElement(‘ul’)`
- `li.textContent = prime`
- `document.body.style.backgroundColor = color` (we need to change our CSS selectors to CamelCase, instead of `background-color` we use `backgroundColor`)








