// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Demo {

    function checkOverFlow(uint _num1, uint _num2) public pure returns(string memory, uint) {
        
        uint sum = _num1 + _num2;
        if(sum<0 || sum > 255){
            revert('Overflow exists');
        } else{
            return ('No OverFlow', sum);
        }

    }
    
}