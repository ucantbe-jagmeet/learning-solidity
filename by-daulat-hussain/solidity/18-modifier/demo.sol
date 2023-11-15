// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Important take aways
// -> Modifiers are code that can be run before and after the function calls
// -> generally userd for three reasons
// ------> Restrict access. validate inputs, Guard against reetrancy hack

contract Demo {
    address public owner;
    uint public x = 10;
    bool public locked;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner,'Not owner');
        _;
    }

    modifier validateData(address _addr){
        require(_addr != address(0),'Not valid address');
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner) {
        owner = _newOwner;
    }

}