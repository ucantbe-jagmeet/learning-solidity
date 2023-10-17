// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FactorialCalculator {
    function calculateFactorial(uint256 n) public pure returns (uint256) {
        require(n >= 0, "Input must be a non-negative integer");
        uint256 result = 1;
        
        for (uint256 i = 2; i <= n; i++) {
            result *= i;
        }
        
        return result;
    }
}