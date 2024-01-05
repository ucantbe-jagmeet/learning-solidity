// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { PriceConverter } from './PriceConvertor.sol';

contract Demo { 
    using PriceConverter for uint256;
    
    uint public minimumUsd = 5e18;
    address[] public funders;
    mapping( address funder => uint256 amountFunded) public addressToAmountFunded;
    
    function fund() public payable {
        // allow users to send money
        // have a minimum money to sent
        require( msg.value.getConversionRate() >= minimumUsd, "Didn't send enough ETH"); // 1e18 = 1ETH 
        // require statment revert the actions that have been done and send the remaining gas back

        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
    }
    
    function withdraw() public {
        for( uint256 funderIndex =0; funderIndex < funders.length; funderIndex++ ){
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
    }

}