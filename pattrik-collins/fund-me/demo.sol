// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Demo {
    
    function fund() public payable {
        // allow users to send money
        // have a minimum money to sent
        require(msg.value > 1e18, "Didn't send enough ETH"); // 1e18 = 1ETH 
        


    }
    
    // function withdraw() public {
    // }
}