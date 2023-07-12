// SPDX-License-Identifier: MIT
 pragma solidity >=0.5.0 <0.9.0;

 contract EventContract{
     struct Event{
         address organizer;
         string name;
         uint date;
         uint price;
         uint ticketCount;
         uint ticketRemain;
     }

     mapping( uint => Event) public events;
     mapping( address => mapping(uint=>uint)) public tickets; // holds tickets
     uint public nextId;
 }