// SPDX-License-Identifier: MIT
 pragma solidity >=0.5.0 <0.9.0;

 contract CrowdFunding{
     mapping( address => uint) public contributors;
     address public manager;
     uint public minimumContribution;
     uint public deadline;
     uint public target;
     uint public raisedAmount;
     uint public noOfContributors;

     constructor(uint _target, uint _deadline) {
         target = _target;
         deadline = block.timestamp + _deadline;
         minimumContribution = 100 wei;
         manager = msg.sender;
     }
 }