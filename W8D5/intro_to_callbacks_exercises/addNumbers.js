const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function addNumbers(sum, numsLeft, completionCallback) {
    if (numsLeft > 0) {
        reader.question("Enter Number", function (userNum) {
            const curNum = parseInt(userNum);
            sum += curNum;
            console.log("The curreent sum is " + sum + ".");
            addNumbers(sum, numsLeft - 1, completionCallback);
        })
    } else {
        completionCallback(sum);
    }
};

addNumbers(0, 3, sum => console.log(`Total Sum: ${sum}`, reader.close()));

// const readline = require('readline');

// const rl = readline.createInterface({
//     input: process.stdin,
//     output: process.stdout
// });

// rl.question('What do you think of Node.js? ', (answer) => {
//     // TODO: Log the answer in a database
//     console.log(`Thank you for your valuable feedback: ${answer}`);

//     rl.close();
// });
