// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version


contract local{
    uint[4] public arr = [ 10, 20, 30, 40];

    function setter( uint index, uint value) public{
        arr[index]= value;
    }
    function length() public view returns(uint) {
        return arr.length;
    }
}