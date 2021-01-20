// SUM

// Write a sum function that takes any number of arguments:
// sum(1, 2, 3, 4) === 10
// sum(1, 2, 3, 4, 5) === 15;
// Solve it first using the arguments keyword, then rewrite your solution to use the ... rest operator.

function argumentSum() {
  sum = 0
  for (let i = 0; i < arguments.length; i++) {
    sum += arguments[i]
  }
  return sum
}
// console.log(argumentSum(1, 2, 3, 4)); // 10

function restOperatorSum(...args) {
  sum = 0
  for (let i = 0; i < args.length; i++) {
    sum += args[i]
  }
  return sum
}
// console.log(restOperatorSum(1, 2, 3, 4, 5)); // 15

// BIND WITH ARGS

// Rewrite your myBind method so that it can take both bind-time arguments and call-time arguments.
//
// Solve it first using the arguments keyword.
//
// Within your myBind method, you'll have to define a new, anonymous function to be returned. Be careful: using arguments inside the anonymous function will not give you the arguments passed to myBind, because arguments is reset on every function invocation (just like this).

// That makes sense, because there are two arrays of arguments you care about: the extra arguments passed to myBind, and the arguments passed when the bound function is called.

// slice to convert arguments into an array, do slice(1) to remove the context for example `myBind(pavlov, "meow", "Kush")``

Function.prototype.myBind = function(context) {
  const that = this
  let bindArgs = Array.from(arguments).slice(1)
  return function callback() {
    const callArgs = Array.from(arguments) // no slice because we're not taking in paramters. anything that gets passed in, we would want.
    return that.apply(context, bindArgs.concat(callArgs)) //remember that apply takes in array, second array is new context
    // with our bindargs and callargs concatted, we return it.
  }
}

// Once you've done that, write a second version using the ... rest operator.

Function.prototype.myOtherBind = function (context, ...arguments) { //arguments is binded
  return (...newArgs) => this.apply(context, arguments.concat(newArgs))
  //newArgs is going to be called and applied new context
  // can use => to avoid `that = this`
}

// CURRYING

// Currying is the process of decomposing a function that takes multiple arguments into one that takes single arguments successively until it has the sufficient number of arguments to run. This technique is named after the logician Haskell Curry (the functional programming language Haskell is, too).

// Write a curriedSum function that takes an integer (how many numbers to sum) and returns a function that can be successively called with single arguments until it finally returns a sum. That is:

function curriedSum(size) {
  const numbers = []

  function _curriedSum(num) {
    numbers.push(num)
    if (numbers.length === size) {
      return numbers.reduce((acc, el) => acc + el)
    } else {
      return _curriedSum // won't be able to keep adding to numbers array
    }
  }
  return _curriedSum 
}

const sum = curriedSum(4)
console.log(sum(5)(30)(20)(1)) // => 56

// Function.prototype.curry

// Collect up arguments until there are numArgs of them,
// If there are too few arguments still, it should return itself.
// When there are numArgs arguments, it should call the original function.
// Write a version that uses Function.prototype.apply and another one that uses ... (the spread operator).

Function.prototype.curryApply = function (numArgs) {
  const numbers = []
  const that = this

  function _curriedSum(num) {
    numbers.push(num)
    if (numbers.length === numArgs) {
      return that.apply(undefined, numbers)
    } else {
      return _curriedSum
    }
  }
  return _curriedSum
}

Function.prototype.currySpread = function(numArgs) {
  const numbers = []
  const that = this

  function _curriedSum(num) {
    numbers.push(num);

    if (numbers.length === numArgs) {
      return that.apply(undefined, ...numbers);
    } else {
      return _curriedSum;
    }
  }

  return _curriedSum
}
