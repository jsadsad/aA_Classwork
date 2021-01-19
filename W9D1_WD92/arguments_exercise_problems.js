// SUM

// Write a sum function that takes any number of arguments:
// sum(1, 2, 3, 4) === 10;
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
