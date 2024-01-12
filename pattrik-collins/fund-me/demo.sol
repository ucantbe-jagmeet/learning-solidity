// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { PriceConverter } from './PriceConvertor.sol';

error NotOwner();

contract Demo { 
    using PriceConverter for uint256;
    
    uint public minimumUsd = 5e18;
    address[] public funders;
    mapping( address funder => uint256 amountFunded) public addressToAmountFunded;

    address public immutable i_owner;
    // we are writing owner as i_owner to define it is immutable
    // after writing immutable we spend 21508 gas
    // after writing non immutable we spend 23644 gas
    // instead of storing it in contract we store it in the bytecode of the contract
    constructor() {
        i_owner = msg.sender;
    }

    function fund() public payable {
        // allow users to send money
        // have a minimum money to sent
        require( msg.value.getConversionRate() >= minimumUsd, "Didn't send enough ETH"); // 1e18 = 1ETH 
        // require statment revert the actions that have been done and send the remaining gas back

        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
    }
    
    function withdraw() public onlyOwner {
        
        for( uint256 funderIndex =0; funderIndex < funders.length; funderIndex++ ){
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }

        // reseting an array
        // widthdraw the funds

        funders = new address[](0);
        // actually widthdraw the funds

        
        // msg.sender if of type address
        // payable(msg.sender) is of type payable address
        // transfer 
        // payable(msg.sender).transfer(address(this).balance);

        // send 
        // bool sendSuccess = payable(msg.sender).send(address(this).balance);
        // require(sendSuccess, 'send failed');

        // call
        ( bool callSuccess, ) = payable(msg.sender).call{ value: address(this).balance}('');
         require(callSuccess, 'call failed');
    }
    // modifier is allow us to create a keyword that we put right in the function
    // decleration to add some functionality very quickly and easily to any function

    modifier onlyOwner(){
        // require(msg.sender == i_owner, 'Sender is not a owner');
        // for gas efficiency we can use revert and if statement
        if(msg.sender != i_owner) {
            revert NotOwner();
        }
        _;
    }
}