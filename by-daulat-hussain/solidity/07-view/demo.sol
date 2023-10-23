// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo {
    uint num1 = 2;
    uint num2 = 10;

    function getResults() public view returns (uint, uint) {
        return  ( num1, num2);
    }
    
    uint product;
    uint total;
    function results() public  returns (uint, uint) {
        num1 += 5;
        num2 += 7;

        product = num1 * num2;
        total = num1 + num2;


        return  ( num1, num2);
    }
}