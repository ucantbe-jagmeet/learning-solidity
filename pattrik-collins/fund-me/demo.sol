// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract Demo {
    
    uint public minimumUsd = 5e18;
    address[] public funders;
    mapping( address funder => uint256 amountFunded) public addressToAmountFunded;
    
    function fund() public payable {
        // allow users to send money
        // have a minimum money to sent
        require( getConversionRate(msg.value) >= minimumUsd, "Didn't send enough ETH"); // 1e18 = 1ETH 
        // require statment revert the actions that have been done and send the remaining gas back

        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = addressToAmountFunded[msg.sender] + msg.value;
    }
     // function withdraw() public {}

    function getVersion() public {}

    function getPrice() public view returns (uint256){
        // Address
        // ABI 
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (, int256 price,,,) = priceFeed.latestRoundData();

        // Price of Eth in terms of USD
        // 2000.00000000 
        return uint256(price * 1e10);
    }

    function getConversionRate(uint ethAmount) public view returns (uint ) {

        // 1Eth worth ?? 
        // 2000_000000000000000 >> it does not contains decimal by denoted by underscore only 

        uint ethPrice = getPrice();
        uint ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
        return ethAmountInUsd;
    }
   
}