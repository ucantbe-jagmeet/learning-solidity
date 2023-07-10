// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

contract Local{

    mapping( uint => string) public roll_no;
    // mapping is different than array because there is no sequential order in mapping just like hash
    // 
    function setter(uint keys, string memory value) public{
        roll_no[keys] = value;
    }
}