// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

contract Local{

    string[] public student = ["Jagmeet", "jasmeet", "Aman"];
    // memory will create copy of array
    // storage will point to same array
    function mem() public view {
        string[] memory s1 = student;
        s1[0]='Poonam';
    }

    function sto() public {
        string[] storage s1 = student;
        s1[0]='Poonam';
    }
}