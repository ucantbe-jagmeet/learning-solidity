// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo {
    function checkInput(uint _input) public view returns(string memory) {
        require(_input >=0, "invalid uint");
        require(_input <=255, "invalid uint");

        return "Input is uint";
    }
}