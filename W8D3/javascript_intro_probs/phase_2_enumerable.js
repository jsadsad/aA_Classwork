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

console.log(testArray.myMap(doubler)); // [2,2,4,6,8,10,10]
