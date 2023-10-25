// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo {
    uint  numberOfTicket;
    uint  ticketPrice;
    uint ticketId;
    uint public totalAmount;
    uint  startAt;
    uint  endAt;
    uint  timeRange;
    string  message= "Buy your first Event Ticket";

    constructor(uint _ticketPrice) {
        ticketPrice = _ticketPrice;
        startAt = block.timestamp;
        endAt= block.timestamp + 7 days;
        timeRange = (endAt - startAt) / 60 / 60 / 24; // converting to seconds
    }

    function buyTicket(uint _value) public returns(uint) {
        numberOfTicket++;
        totalAmount += _value;
        ticketId = numberOfTicket;
        return ticketId;
    }

}