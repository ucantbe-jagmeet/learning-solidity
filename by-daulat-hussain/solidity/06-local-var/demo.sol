// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo {
    uint public myNumber;

    function local() public returns (uint) {
        // variable define inside the function store
        uint i = 345;
        myNumber = i;
        return myNumber;
    }
}