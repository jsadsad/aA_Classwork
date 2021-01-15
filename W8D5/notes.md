# JavaScript Part 2

_JavaScript is prototypal inheritance_

A function _IS_ an object in JavaScript.

# ES6 Features

- Property Declaration: `const obj = {x, y}`
- Functions: `const foo = (arg1, arg2) => {}`

# Linters

- Find errors _before_ you run your code.
- Teach and enforce best practices.
- Enforce style conventions

# Ways to maintain the context

- Apply: `func.apply(newContext, [args])`
- Call: `func.call(newContext, arg1, arg2)`
- Bind: `func.bind(newContext)(arg1, arg2)`


_apply_ is invoked immediate with newContext as receiver.

_call_ gives the context obj to the function. Only difference with apply is that apply takes in an array and call takes arguments separated by commas.]

_bind_ assigning a new context - not invoking it. bind invoked once will get context. twice will actually invoke the function. Takes the new context as the first argument. Bind is flexible.

# Binding

- ensures our context is what we want it to be.
- `bind()` returns a function when invoked once
- when invoked twice, will invoke with the context.
- different from `call` and `apply` which _invoke_ the function.

# Operators

- Spread: array to individual elements. `[...arguments]`

- Rest: _merging_ individuals to an array

# Arguments

JavaScript is a very permissive. It will favor throwing underfnied over an error.

Functions happily accept more or fewer arguments than expected.

Omitted argumentsw are set to `underfined` if they have no default

Arguments are array-alike. You can `key` into it or call `length`. Spread and rest operators will work on this. You can not use `forEach` on this

`setInterval` invokes callback provided by JS after every interval. Can be used to create a clock that ticks every second.

`setTimeOut` is set on the window. Invokes the time argument once the time is pased.

# Callbacks

- Functions that are passed to other functions.

- Allows us to build in asynchroninity in our programs.

# Async

- JavaScript lives in an environment -single-threaded.

- JavaScript allow us to run things in the background and keep running our file.

- The event loop and the message queue are independent of JavaScript.

- When an event(api or cycle) happens, this function will keep waiting in the background while we are able to do things in browser.

- The browser provides the queue and web APIs.

# Event Loop

- Asynchronous functions schedule work to be done in the background(timers, AJAX requests, events)

- Callbacks are invoked when action ready to occur adn the stack is empty.

- When the web event resolves, it goes in the queue.

# MISC.

- All function styles have `this` pointing to window.

- Instances of an object are created using constructor methods.

- `static` makes a method a class method

- `callbacks` are functions that is passed as an argument to another function.

- web-events are after after the `window`

- `timTheDog.sayHi.call(ellieTheDog)` works.

- When you call `.length` on the arguments objects, it will return 1 because it is just an ARRAY-LIKE OBJECT. When you convert it an array, it will be 2.
