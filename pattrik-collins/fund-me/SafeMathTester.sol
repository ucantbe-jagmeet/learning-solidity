// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SafeMathTester { 
    uint8 public bigNumber = 255; // unchecked in version 0.6.0 but it will check condition in 0.8.0 
    // and contract will fail it we add 1 to this bigNumber

    function add() public {
        bigNumber = bigNumber + 1;
    }

}