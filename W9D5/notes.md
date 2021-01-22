# Vanilla DOM

# Recap

- Current Target is the element where I am attaching the listener. It never changes. A `mouseover` event listener would be added to the ul element.

- Target is where the event happens (ex. `li` that has an inner text.). This object "dispatched" the event

- The `Document` is any web page loaded in the browser.

- A reference to the Document object exists as a property on the Window(i.e. `window.document`)

- The DOM represents the document using nodes and objects to represent the structure of our document(think family tree)

jQuery is low level(fast), rapid development, and concise. _You don't need jQuery_. jQuery simplifies "complicated" AJAX calls and DOM manipulation

# Data Types

- Node: Every object located within a document is a node of some kind.
- Element: Refers to an element or a node of type element returned by a member of the DOM API
- NodeList: A nodeList is an array-like collection of nodes and can be accessed through indexing.
- HTMLCollection: A HTMLCollection is an array-like collection of elements.

# Methods

- `getElementById(idString)` - returns the HTML element of given id.

- `getElementsByClassName(classString)` returns an HTML collection. This can not be iterated.

- `querySelector(selector)` returns the first selector. # or .

- `querySelectorAll(selectors)` returns a NodeList and is better used for iterating(forEach). A nodeList is not a live collection.

- .classList `.add` or `.remove` to a given element.

# Events and the Document

- an event can be something the browser does or something a user does - a web page has finished loading, or an input field was changed, or a button was clicked.

- JavaScript code can react to these events via event handlers or listeners installed on DOM elements.

There are 3 ways to regist event handlers for a DOM element:
1. on an event target element using `EventTarget.addEvenetListener()`
2. on an HTML attribute `<button onclick="alert()">`
3. DOM element properties `myButton.onclick = function(e) {}`

# LocalStorage

It persists as long as you do not _clear_ it.

- `.setItem("message", "hello")` sets key-val pair

- `.getItem("message")` will pull the value

- whenever we pull, we want to `JSON.parse`

- `const input = document,.querySelector("input[name='add-grocery']")`

# Bubbling

Benefit by delegation to parents.

`event.stopPropagation()` will stop bubbling.

When `click` events happen on `li`, it keeps bubbling up to `ul` to check for other events and invokes it. The default behavior happens for both.

1. Element button
2. Element div
3. Element body
4. Element HTML
5. Document

# History

Moving forward and backwards.

`.length`, `.back`, `.go()`

# Location

Provides information that lives in the URL. It is implicit so the browser knows.

`window` is an api that provides methods to manipulate URL

`window.location` can be used to access a new URL.

`window.location.href = url;`

`window.location.URL;`(THIS IS READ ONLY)

# Anchor

"#" comes at the end of the url. The anchor tag anchors you to an element on the page.
