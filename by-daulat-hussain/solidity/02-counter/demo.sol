// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Demo{
    uint public numberUfNFT;

    function addNFT() public  {
        numberUfNFT += 1;
    }

    function deleteNFT() public  {
        numberUfNFT -= 1;
    }

    function checkTotalNFT() public view returns(uint256) {
        return numberUfNFT;
    }
}