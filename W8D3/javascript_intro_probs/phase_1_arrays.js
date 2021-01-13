Array.prototype.uniq = function() {
  const answerArray = [];

  this.forEach(function(ele) {
    if (!answerArray.includes(ele)) {
      answerArray.push(ele);
    }
  });
  return answerArray;
}

const testArray = [1,1,2,3,4,5,5]
console.log(testArray.uniq()); // [1,2,3,4,5]
