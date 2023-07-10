// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

contract Array{
    bool public value = true;
    function check(uint a) public returns (bool){
        if(a>100){
            value = true;
            return value;
        }
        else{
            value = false;
            return value;
        }
    }
}