// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo {
    string public myState;
    uint public myNum;

    // string public defaultText="hey Jagmeet";
    // uint public defaultNum = 6;

    // bytes public defaultBytes = "Hey Jagmeet";
    // bytes public defaultBytesNo;

    constructor( string memory _text, uint _no){
        myState = _text;
        myNum = _no;
    }

    function update(string memory _text, uint _no) public {
        myState = _text;
        myNum = _no;
    }

}