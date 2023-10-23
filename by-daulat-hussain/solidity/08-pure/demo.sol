// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo {
    uint num1 = 4;
    uint num2 = 10;

    // function getData() public pure returns (uint, uint) {
    function getData() public view returns (uint, uint) {
        uint myNum1 = 30;
        uint myNum2 = 50;

        uint product = myNum1 * num1;
        uint total = myNum2 * num2;

        return  ( product, total);
    }
    
 
}