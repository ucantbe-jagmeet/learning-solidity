// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract Demo {
    
    uint public minimumUsd = 5;
    
    function fund() public payable {
        // allow users to send money
        // have a minimum money to sent
        require(msg.value > 1e18, "Didn't send enough ETH"); // 1e18 = 1ETH 
        // require statment revert the actions that have been done and send the remaining gas back
    }
     // function withdraw() public {}

    function getPrice() public {}
    function getConversionRate() public {}

    function getVersion() public view returns (uint256){
        // Address
        // ABI 
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (, int256 price,,,) = priceFeed.latestRoundData();

        // Price of Eth in terms of USD
        // 2000.00000000 
        return uint256(price * 1e10);
    }
   
}