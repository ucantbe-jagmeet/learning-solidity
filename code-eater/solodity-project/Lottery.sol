// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Lottery{
    address public manager;
    address payable[] public participants;

    constructor(){
        manager = msg.sender; // global variable
    }

    receive() external payable{
        participants.push( payable( msg.sender));
    }
   
   function getBalance() public view returns(uint){
     return  address(this).balance;       
    }

}