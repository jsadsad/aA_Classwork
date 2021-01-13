Array.prototype.uniq = function() {
  const answerArray = [];

  this.forEach(function(ele) {
    if (!answerArray.includes(ele)) {
      answerArray.push(ele);
    }
  });
  return answerArray;
}

// const testArray = [1,1,2,3,4,5,5]
// console.log(testArray.uniq()); // [1,2,3,4,5]



// Array#twoSum 
// - returns an array of position pairs where the elements sum to zero
// Note: assuming all numbers are unique

Array.prototype.twoSum = function () {
  const answerArray = [];

  for (let i = 0; i < this.length; i++) {
    for (let j = i + 1; j < this.length; j++) {
      if (this[i] + this[j] === 0) {
        answerArray.push([i, j]);
      }
    }
  }

  return answerArray;
}

// const testArray = [1, -1, -2, 2, 5]
// console.log(testArray.twoSum()); // [ [0, 1], [2, 3] ]


// Array#transpose 
// - where we have a two-dimensional array representing a matrix.
// returns the transpose
// should not mutate the original array

Array.prototype.transpose = function () {
  const answerArray = [];

  for (let i = 0; i < this.length; i++) {

    const subArr = [];

    for (let j = 0; j < this.length; j++) {

      subArr.push(this[j][i]);
    }

    answerArray.push(subArr);
  }

  return answerArray;
}

console.log([[0, 1], [2, 3]].transpose()); // [ [ 0, 2 ], [ 1, 3 ] ]


