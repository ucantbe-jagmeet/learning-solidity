// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

contract local{
    uint public count ;

    constructor( uint new_count){
        count = new_count;
    }
        /*
        -> executed only once
        -> you can create only one constructor and that is optional
        -> A default constructor is created by the compiler if there is no expilicitly 
            defined constructor 
        */
}