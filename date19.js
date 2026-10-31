


// 1. Check whether a number is positive, negative, or zero

let num1 = Number(prompt("1. Enter a number:"));

if (num1 > 0) {
    console.log("Positive");
} else if (num1 < 0) {
    console.log("Negative");
} else {
    console.log("Zero");
}


// 2. Check whether a number is even or odd

let num2 = Number(prompt("2. Enter a number:"));

if (num2 % 2 === 0) {
    console.log("Even");
} else {
    console.log("Odd");
}


// 3. Check whether a person is eligible to vote

let age1 = Number(prompt("3. Enter your age:"));

if (age1 >= 18) {
    console.log("Eligible to vote");
} else {
    console.log("Not eligible to vote");
}


// 4. Find the largest of two numbers

let a = Number(prompt("4. Enter first number:"));
let b = Number(prompt("Enter second number:"));

if (a > b) {
    console.log(a + " is the largest");
} else if (b > a) {
    console.log(b + " is the largest");
} else {
    console.log("Both numbers are equal");
}


// 5. Display student's grade based on marks

let marks = Number(prompt("5. Enter your marks:"));

if (marks >= 90) {
    console.log("Grade A");
} else if (marks >= 80) {
    console.log("Grade B");
} else if (marks >= 70) {
    console.log("Grade C");
} else if (marks >= 60) {
    console.log("Grade D");
} else if (marks >= 50) {
    console.log("Grade E");
} else {
    console.log("Fail");
}


// 6. Find the largest of three numbers

let x = Number(prompt("6. Enter first number:"));
let y = Number(prompt("Enter second number:"));
let z = Number(prompt("Enter third number:"));

if (x >= y && x >= z) {
    console.log(x + " is the largest");
} else if (y >= x && y >= z) {
    console.log(y + " is the largest");
} else {
    console.log(z + " is the largest");
}


// 7. Check whether a year is a leap year

let year = Number(prompt("7. Enter a year:"));

if (year % 400 === 0 || (year % 4 === 0 && year % 100 !== 0)) {
    console.log("Leap year");
} else {
    console.log("Not a leap year");
}


// 8. Check whether a person is eligible for driving license

let age2 = Number(prompt("8. Enter your age:"));

if (age2 >= 18) {
    console.log("Eligible for driving license");
} else {
    console.log("Not eligible for driving license");
}


// 9. Check whether a number is divisible by both 3 and 5

let num3 = Number(prompt("9. Enter a number:"));

if (num3 % 3 === 0 && num3 % 5 === 0) {
    console.log("Divisible by both 3 and 5");
} else {
    console.log("Not divisible by both 3 and 5");
}


// 10. Simple calculator using two numbers and an operator

let num4 = Number(prompt("10. Enter first number:"));
let num5 = Number(prompt("Enter second number:"));
let operator = prompt("Enter operator (+, -, *, /):");

if (operator === "+") {
    console.log("Result = " + (num4 + num5));
} else if (operator === "-") {
    console.log("Result = " + (num4 - num5));
} else if (operator === "*") {
    console.log("Result = " + (num4 * num5));
} else if (operator === "/") {
    console.log("Result = " + (num4 / num5));
} else {
    console.log("Invalid operator");
}