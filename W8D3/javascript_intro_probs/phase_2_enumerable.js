// Array#myEach(callback) - receives a callback function and executes the callback for each element in the array
// Note that JavaScript's forEach function has no return value (returns undefined)

Array.prototype.myEach = function(callback) {
  for (let i = 0; i < this.length; i++) {
    callback(this[i]);
  }
}

Array.prototype.uniq = function() {
  const answerArray = [];

  this.myEach(function(ele) { //using myEach that we monkey patched.
    if (!answerArray.includes(ele)) {
      answerArray.push(ele);
    }
  });
  return answerArray;
}

const testArray = [1,1,2,3,4,5,5]
// console.log(testArray.uniq()); // [1,2,3,4,5]

// Array#myMap(callback) - receives a callback function, returns a new array of the results of calling the callback function on each element of the array
// should use myEach and a closure

Array.prototype.myMap = function(callback) {
  const answerArr = [];
  this.myEach(function(ele) {
    answerArr.push(callback(ele));
  });
  return answerArr;
}

let doubler = function(number) {
  return number * 2;
}

// console.log(testArray.myMap(doubler)); // [2,2,4,6,8,10,10]

// console.log(Array.isArray(testArray.myMap(doubler))); // true



// Array#myReduce(callback[, initialValue])

// - (like Ruby's Array#inject) receives a callback function,
// and optional initial value, returns an accumulator
// by applying the callback function
// to each element and the result of the last invocation of the callback
// (or initial value if supplied)

// initialValue is optional and should default
// to the first element of the array if not provided

// examples:

// // without initialValue
// [1, 2, 3].myReduce(function (acc, el) {
//   return acc + el;
// }); // => 6

// // with initialValue
// [1, 2, 3].myReduce(function (acc, el) {
//   return acc + el;
// }, 25); // => 31

// should also use myEach


// Note: Works, but doesn't use myEach
// Array.prototype.myReduce = function(callback, initialValue) {

//   let acc;
//   let i = 0;

//   if (initialValue === undefined) {
//     acc = this[0];
//     i++;
//   } else {
//     acc = initialValue;
//   }

//   while (i < this.length) {
//     acc = callback(acc, this[i]);
//     i++;
//   }

//   return acc;
// }


// trying to use myEach
Array.prototype.myReduce = function(callback, initialValue) {

  let arrClone = [];

  this.myEach(function (ele) { //using myEach that we monkey patched.
    arrClone.push(ele)
  });

  let acc;

  if (initialValue === undefined) {
    acc = arrClone.shift();
  } else {
    acc = initialValue;
  }

  arrClone.myEach(function (ele) {
    acc = callback(acc, ele);
  });

  return acc;
}


/// // without initialValue
console.log([1, 2, 3].myReduce(function (acc, el) {
  return acc + el;
})); // => 6


// // with initialValue
console.log([1, 2, 3].myReduce(function (acc, el) {
  return acc + el;
}, 25) ); // => 31
