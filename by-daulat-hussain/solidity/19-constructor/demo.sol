// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract X {
    string public name;
    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;
    constructor(string memory _text) {
        text = _text;
    }
}

// there are 2 ways to initialize parent contract with parameters

// Pass the parameter here in the inheritance list
contract B is X("Input to X"), Y("input to Y"){}

contract C is X, Y{
    constructor(string memory _name, string memory _text) X(_name) Y(_text)  {}
}


// Parent constructores are always called in the order of inheritance
// Regardless of the order of parent contracts listed in the constructor of the child contract

// Order of constructor called:
// -> 1. X 
// -> 2. Y 
// -> 3. B
// -> 4. C

contract D is X, Y{
    constructor() X("X was called") Y("Y was called")  {}
}
// Order of constructor called:
// -> 1. X 
// -> 2. Y 
// -> 3. D


contract E is X, Y{
    constructor() Y("Y was called") X("X was called")  {}
}
// Order of constructor called:
// -> 1. X
// -> 2. Y 
// -> 3. E