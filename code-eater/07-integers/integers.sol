// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version


/*
    -> two types of integers int and uint
    -> size 8 - 256
    -> int alais to int256 , uint alias to uint256
    -> by default - 0
    -> overflows get detected at compile time
    -> int8 range -128 to +127
    -> int16 range -32768 to +32767
    -> uint8 range 0 to 255
    -> int16 range 0 to 65535
*/ 

contract local{
    // int8 count = 127 ;
    // int8 count = 128 ;
    uint8 count = 128 ;
}