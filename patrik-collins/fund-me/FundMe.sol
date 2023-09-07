// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FundMe {

    uint256 public minimumUsd = 5;

    function fund()  public payable{
        require(msg.value >= minimumUsd, "didn't sent enough ETH"); ///1e18 = 1ETH
            
    }
    // function withdraw()  public{
    // }
}