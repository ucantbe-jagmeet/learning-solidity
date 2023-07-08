// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

contract local{
    uint public age = 10;

    function getter() public pure returns (uint){
        uint roll = 100;
        return roll;
    }

    // view and pure both are used when we dont want to modify the state variables
    // but we cant use pure where we want to read the state variables 

}