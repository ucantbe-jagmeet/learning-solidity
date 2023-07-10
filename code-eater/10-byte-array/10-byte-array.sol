// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

/*
    -> 1 byte = 8 bits = 2 hexadigit = byte array upto 2 items
    -> 1 hexadecimal digit = 4 bits
    -> everything that will be stored in the byte array will be in the form of hexadecimal digits
    -> these type of array is immutable
    -> padding of array added at the end
*/

contract Array
{
    bytes3 public b3; 
    bytes2 public b2;

    function setter() public {
        b3 = 'c-c';
        b2 = 'cc';
    }

}