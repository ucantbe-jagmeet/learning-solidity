// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

contract State
{
    enum user{ allowed, not_allowed, wait}

    // user public u1 = user.allowed;  // output = 0
    user public u1 = user.allowed;  // output = 2
    uint public lottery = 1000;

    function owner() public {
        if( u1 == user.allowed){
            lottery = 0;
        }
    }
    function changeOwner() public {
        u1 = user.not_allowed;
    }

}