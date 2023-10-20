// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo {
    uint hey;

    function getInfo() public view returns (uint256) {
        return hey;
    }
    
    function updateInfo( uint _hey) public  {
        hey = _hey;
    }

    function get(uint _a, uint _b) public returns (uint) {
        uint newNum = _a + _b;
        hey = newNum;
        return hey;
    }

}