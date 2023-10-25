// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Demo {
    // address public myAdd =0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2 ;
    address public constant MY_ADD =0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2 ;

    // constant saves gas 
    // keyword given to that variable that doesnot change

    function getConstant() public view returns (address) {
        return MY_ADD;
    } 
}