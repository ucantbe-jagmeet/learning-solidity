// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Demo {
    function checkInput(uint _input) public pure returns(string memory) {
        require(_input >=0, "invalid uint");
        require(_input <=255, "invalid uint");

        return "Input is uint8";
    }

    function Odd(uint _input) public pure returns (bool){
        require(_input %2 !=0, "Not odd");
        return true;
    }
    function Even(uint _input) public pure returns (bool){
        require(_input %2 ==0, "Not Even");
        return true;
    }
}