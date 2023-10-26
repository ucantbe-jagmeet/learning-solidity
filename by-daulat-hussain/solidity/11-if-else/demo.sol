// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo {
    uint public myNum = 5;
    string public myString;

    function get(uint _num) public returns (string memory) {
        // if(_num == 5){
        //     myString = "Hey the value of myNum is 5";
        // }else if(_num == 4){
        //     myString="Not 5";
        // }  else{
        //     myString="Hey Jagmeet";
        // }

        return _num == 5 ? myString ="Jagmeet" : myString = "Not 5";
    }
}