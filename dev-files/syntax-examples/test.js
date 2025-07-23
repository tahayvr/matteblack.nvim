/**
 * Theme Test File for JavaScript
 * This file contains various JS syntax elements.
 * @param {string} initialName - The initial name for the Greeter.
 */

// --- Comments ---
// This is a standard comment.
// TODO: Migrate from Promises to async/await in the data fetching module.
// FIXME: Memory leak in the event listener setup.

// --- Imports and Exports ---
import { someFunction } from "./utils.js";
export const PI = 3.14159;

// --- Variables and Constants ---
const aConstant = "This cannot be reassigned";
let aVariable = 123;
var legacyVar = "Don't use me"; // @keyword: `var`

// --- Data Types ---
const aString = "Hello, World!";
const templateLiteral = `The value is ${aVariable}`;
const aNumber = 42.5;
const aBoolean = true;
const aNull = null;
const anUndefined = undefined;
const aSymbol = Symbol("id");
const aRegex = /ab+c/i;

// --- Data Structures ---
const anArray = [1, "two", { three: 3 }];
const anObject = {
  key: "value",
  "another-key": 123,
  method() {
    return this.key;
  },
};

// --- Class Definition ---
class Greeter {
  // A private field (new syntax)
  #secret = "shhh";

  constructor(name) {
    this.name = name; // @property
  }

  // An arrow function as a class property
  greet = () => {
    console.log(`Hello, ${this.name}!`);
  };

  // An async method
  async fetchGreeting() {
    // @exception: `try`/`catch`
    try {
      const response = await fetch("https://api.example.com/greeting");
      const data = await response.json();
      return data.greeting;
    } catch (error) {
      console.error("Failed to fetch greeting:", error);
    }
  }
}

// --- Functions ---
// A standard function declaration
function add(a, b) {
  // @keyword.return: `return`
  return a + b;
}

// An arrow function
const subtract = (a, b) => a - b;

// --- Control Flow ---
// @conditional: if/else
if (aVariable > 100) {
  console.log("It's a big number!");
}

// @repeat: for...of loop
for (const item of anArray) {
  console.log(item);
}

// --- JSX-like syntax in comments for testing ---
// <div className="test">
//   <h1>Hello JSX</h1>
// </div>

// --- Deliberate Syntax Error ---
// Remove the '//' to test LSP diagnostics
// const x = { key: "value" y: "another" };
