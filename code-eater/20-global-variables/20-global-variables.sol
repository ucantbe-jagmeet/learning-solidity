// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

contract Local
{
    function getter () public view returns(uint block_no, uint timestamp, address msgSender){
        return ( block.number, block.timestamp, msg.sender);
    }
}