// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo {
    // uint public myNumber;

    // function local() public returns (address, uint, uint) {
    //     // variable define inside the function store
    //     uint i = 345;
    //     myNumber = i;

    //     i+= 45;

    //     address myAddress = address(1);
    //     return ( myAddress, myNumber, i);
    // }

    address public owner;
    address public number;
    address public gaslimit;
    address public nowOn;
    address public value;
    address public myblockhash;
    address public difficulty;

    constructor() {
        owner = msg.sender;
        myblockhash = block.coinbase;
        myblockhash = block.coinbase;
        // number = block.number;
    }
}