// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version


/*
    ->fixed size array - bytes1, bytes2, bytes3.....
    ->dynamic size array - bytes[]
*/
contract local
{
    bytes public b1 = 'abc';
    
    function pushElement() public {
        b1.push('d');
    }
    
    function getElement(uint i) public view returns (bytes1) {
        return b1[i];
    }

    function getLength() public view returns (uint) {
        return b1.length;
    }


}