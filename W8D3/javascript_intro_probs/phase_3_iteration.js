// Array#bubbleSort
// - receives an array, returns a sorted array
// by implementing bubble sort sorting algorithm
Array.prototype.bubbleSort = function() {

  let arrClone = [];

  this.forEach(function (ele) {
    arrClone.push(ele)
  });

  let sorted = false;

  if (sorted === false) {
    sorted = true;
    for (let i = 0; i < this.length - 1; i++) {
      if (arrClone[i] > arrClone[i + 1]) {
        let x = arrClone[i];
        let y = arrClone[i + 1];
        arrClone[i] = y;
        arrClone[i + 1] = x;
        sorted = false;
      }
    }
  }
  return arrClone;
}
// const testArray = [100, 2, 459]
// console.log(testArray.bubbleSort()); // [2, 100, 459]



// String#substrings
// - receives a string, returns an array of all substrings

String.prototype.substrings = function() {

  let substringsArr = [];

  for (let i = 0; i < this.length; i++) {
    for (let j = i + 1; j <= this.length; j++) {
      substringsArr.push(this.slice(i, j));
    }
  }
  return substringsArr;
}

// Test
// console.log("Hello".substrings()); // ["H", "He", ... "lo", "o"]
