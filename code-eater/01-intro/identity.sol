// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

contract Identity{
    string name;
    uint age;

    constructor() public{
        name = "Jagmeet";
        age = 23;
    }
    function getName() view public returns(string memory){
        return name;
    }
    function getAge() view public returns(uint ){
        return age;
    }
    function setAge()  public {
        age = age + 1;
    }
}