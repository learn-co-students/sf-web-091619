# Readme

## Review
- Getting elements from the DOM
- Attaching elements to the DOM
- Listening to an event

## Arrow Functions
```JavaScript
text => {console.log(text)}

function(text) {
	console.log(text)
}
```

## Functions vs Methods
- Methods have a “receiver” while functions do not.

## `fetch()` and Promises
### Synchronous vs Asynchronous 
![synchronous-asynchronous](synchronous-asynchronous-javascript.png)

- `fetch()` makes and asynchronous call to a url
- `fetch()` creates a type of object called a Promise
- The Promise object represents the eventual completion (or failure) of an asynchronous operation, and its resulting value. (https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Promise)

## Running Servers
- In order to run the http server (front end server) you can run `python -m SimpleHTTPServer`
- To start our backend server run `json-server --watch db.json` (make sure json-server is installed `npm install -g json-server`)