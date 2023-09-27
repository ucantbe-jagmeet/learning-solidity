// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo {
    string public  message;

    function Inbox(string memory initialMessage) public {
        message = initialMessage;
    }
    
    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

}