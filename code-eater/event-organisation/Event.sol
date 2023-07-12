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

     function createEvent( string memory name, uint date, uint price, uint ticketCount) external{
        require( date > block.timestamp , "You can organize event for future date");
        require( ticketCount > 0 , "You can organize event only if you create more than 0 tickets");

        events[nextId] = Event(msg.sender, name, date, price, ticketCount, ticketCount);
        nextId++;
    
     }
 }