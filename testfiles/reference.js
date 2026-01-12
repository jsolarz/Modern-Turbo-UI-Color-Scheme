// JavaScript Reference File for Theme Testing

"use strict";

const PI = 3.14159;
let debug = true;

class Vector {
    constructor(x, y) {
        this.x = x;
        this.y = y;
    }

    length() {
        return Math.sqrt(this.x ** 2 + this.y ** 2);
    }

    static fromArray(arr) {
        return new Vector(arr[0], arr[1]);
    }
}

function greet(name) {
    const message = `Hello, ${name}!`;
    console.log(message);
    return message;
}

async function fetchData(url) {
    try {
        const response = await fetch(url);
        const json = await response.json();
        return json;
    } catch (err) {
        console.error("Fetch error:", err);
        return null;
    }
}

const nums = [1, 2, 3, 4, 5];
const doubled = nums.map(n => n * 2);

console.log("PI:", PI);
console.log("Vector length:", new Vector(3, 4).length());
console.log("Doubled:", doubled);

greet("Nord Turbo");

fetchData("https://example.com/api").then(data => {
    console.log("Data:", data);
});
