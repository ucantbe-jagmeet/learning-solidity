// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

contract local{

    function check ( int a) public pure returns(string memory)
    {
        string memory value;

        if( a > 0){
            value = 'Greater than zero';
        }
        else if(a==0) {
            value = 'equal than zero';
        }
        else{
            value = 'Less than zero';
        }

        return value;
    }
}