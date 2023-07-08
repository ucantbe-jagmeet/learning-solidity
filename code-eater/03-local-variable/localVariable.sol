// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

contract local{

    //pure keyword is used when we doesnot have to work with any state variable
    function store() pure public returns(uint){
        uint age = 12;
        string memory name = "jagmeet";

        return age;
    }
}