# jQuery

When running JavaScript code in the browser, the browser provides an API by which JavaScript code can access the HTML content of a page. This API is called the Document Object Model. The DOM API is standardized by the World Wide Web Consortium (W3C).

# DOM

To change waht we can see on the page, we can manipulate the DOM using JavaScript.

_Take JavaScript and change HTML_

# jQuery

Library since 2006. It is a JavaScript wrapper libary used for low level manipulation.

Used by 73% of top 10,000,000 sites. It is supported universally supported by all browsers. It is consistent API for programmers to interface regardless of browser. Write less, do more.

# Ways to use jQuery

- wrapper-style
  - input: unwrapped HTML element or array of seevral elements.
  - output: jQuery object wrapping those elements, giving you access to jQuery methods.
  - abstract unless you see it.
  - `$(someHTMLVariable)`

- selector-style
  - input: CSS selector as a string
  - output: jQuery object(array-like) containing all elements taht match the selector.
  - `$('li.someClass')`

- HTML-style
  - input: HTML code as a string
  - output: jQuery object containing the top-level elements you built.
  - `$('<li class="somecClass">')`

- ready-style
  - input: function to run when DOM is fully loaded.
  - `$(() => alert('DOM is fully loaded'))`
