// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

contract local{
    // uint  age = 10;
    uint public age = 10; // public function automatically creates getter function 
    // for the state variable

    // function getter() public view returns(uint ){
    //     return age;
    // }

    function setter( uint newAge) public {
        age = newAge;
    }

    // notes 
    //->  when you call a setter function it creates a transaction that needs to be minded
    //    and costs gas because it changes the blockchain. Vice versa for getter function
    //->  when you declare a public state variable a getter function is automatically created
    //->  by default variable visisbility is private
}