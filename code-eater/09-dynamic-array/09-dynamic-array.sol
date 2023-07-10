// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version


contract Array{
    uint[] public arr;
    function pushElement(uint item) public{
        arr.push(item);
    }
    function length() public view returns (uint){
        return arr.length;
    }
     function popElement() public{
        arr.pop();
    }
}