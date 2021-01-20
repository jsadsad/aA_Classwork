# Prototypal Inheritance
 
In JavaScript, the context of unbound functions is dependent on _THE WAY YOU CALL THE FUNCTION_

Remember, context is what `this` is being referred to.

_Callbacks are always invoked in function style_

There are 5 styles: function, method, constructor, call, apply.

Functions that are needed to bind: method

Save `let that = this`

# Currying

- a functional programing technique
- a way to split up a function that takes multiple arguments and do piece by piece.
- useful when the arguments used by a function aren't avaliable at the same time.

# Prototypes

- JavaScript uses Prototypal Inheritance. Ruby uses Classical Inheritance..

- One objects gets access to the properties and functions defined on another object.

- Key concepts in Prototypal Inheritance: constructor functions, the `new` keyword, prototypes, the `__proto__` property, and property lookup.

- Three ways to implement in JS: Surrogate, Object.create, ES6 class syntax.

- Every object in JavaScript is assocaited with a prototype object. The only exception to this is `Object.prototype` because it is at the top of the prototype chain.

- If an objec doesnt have a property, JS looks at its prototype through _proto_

- `Cat.prototype = Animal.prototype` is inheritance.

- `new` assigns the` __proto__` of the new instance(obj) to Constructor's prototype.

# Surrogating

1. Define
2. Modify the prototype
3. blank slate. Invoke the calls with `Surrogate()`
4.  We reset the constructor prototype back to be the child. This cleans it up.


