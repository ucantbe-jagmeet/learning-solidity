// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MaximumNumber {
    function findMaximum(uint[] memory numbers) public pure returns (uint) {
        require(numbers.length > 0, "Input array must not be empty");
        
        uint maximum = numbers[0]; 
        
        for (uint i = 1; i < numbers.length; i++) {
            if (numbers[i] > maximum) {
                maximum = numbers[i];
            }
        }
        
        return maximum;
    }
}






