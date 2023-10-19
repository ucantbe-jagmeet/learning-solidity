// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Demo{
    bool public hey;
    bool public no = true;

    uint8 public u8 =1;
    uint256 public u256 = 456;
    uint public u = 123;

    // for negative value use int

    int8 public i8 = -1;
    int256 public i256 = 456;
    int public i = -1234;

    // now you can add min and max int
    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    //ARRAY
    bytes1 public a;
    bytes1 public b;
    
    //address
    address public add1;
    address public addr=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    //address
    bool public defaultBool; // false
    uint public number; // 0
    int public defInt; // 0
    address public dInt; // 0x00000000

}