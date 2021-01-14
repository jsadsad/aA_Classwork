// Phase 4: Recursion

// range(start, end) 
// - receives a start and end value, returns an array from start up to end

let range = function(start, end) {
    // base case
    if (start === end) {
        return [end]
    } else if (start > end) {
        return []
    }

    let answerArr = [];

    answerArr.push(start);
    
    return answerArr.concat(range(start + 1, end));
}

// console.log(range(1, 10)); // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]



// sumRec(arr) 
// - receives an array of numbers and recursively sums them

let sumRec = function(arr) {
    // base case
    if (arr.length === 0) {
        return 0;
    }

    let first_num = arr[0];

    return first_num + sumRec(arr.slice(1));
}

console.log(sumRec([6, 7, 8, 9])); // 30


// exponent(base, exp) 
// - receives a base and exponent, 
// returns the base raise to the power of the exponent (base ^ exp)
