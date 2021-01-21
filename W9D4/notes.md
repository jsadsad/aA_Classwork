# AJAX and Promises

AJAX's response is only data.

A `Promise` is an object that is called `new Promise((resolve, reject) => {})`

APIs send back JSON objects. AJAX lets us update our page real time. RAILS lets us CRUD in our backend such as save, retrieve, delete, edit.

# Where we're going

- Building single page web applications
- Client side rendering build using _REACT_
- Rails will be our backend. It becomes a server-side API
- Sending and rendering data as json.

# AJAX

Stands for _Asynchrounous JavaScript And XML_. It is anHTTP request that happens in the background.

- It allows us to request and receive data after a page has loaded. Allows us to send data back in the server.

- `$.ajax` (low-level, complete interface)
- `$.get` ("more convenient" function for GET requests)
- `$.post` ("more convenient" function for POST requests)

#jQuery $.ajax()

- jQuery `$.ajax` method allows us(among many things) to make AJAX requests.
- Returns a promise.
- You can only use any data format.
- `dataType: 'JSON'`

- ex:
`doSomething()
.then(doingSomething => {})
.then(moreStuff => {})
.then(finalResult => {})
.catch(failureCallback)`

- Chaining on is more for readability and useful for debugging.

- `.then` method accepts a resolved and a rejected callback and is equivalent to using done/fail together.

# Promises

Promises represent the eventual completion or failure of an asynchrounous operation and its resulting value.

A promise is an object that wraps the action which is the task it is suppose to perform before it fails.

# States of Promise

1. Pending - The promise' action is ongoing(hasn't fulfilled or rejected yet)
2. Settled - The promise's action has finished
 - Fulfulled: The promise's action succeeded. Success callback in `then` will run
 - Rejected: The promise's action failed. Failure callback in `then` or `catch` will run

# Promise API

`then` is the most important Promise method. It takes a success callback and optionally a failure callback as args.

It returns a new promise and can therefore chain `then` as many times as you want.

A promise chain stops if there's an exception and looks for failure calbback in next `then` or, if there is none, down the chain for a catch.

`catch` takes a failure callback and is used for error handling; also returns a promise.

`resolve` will pass the arg to `.then`

# AJAX setup

- a `util` file will hold all of your AJAX requests.

# MISC

- A URL should always be provided in the options hash passed to the jQuery ajax method.

- A Promise is an object that wraps an async method. It gives us statuses of pending, success, or fail.

- A rejected will run whenever the .then chain fails.
