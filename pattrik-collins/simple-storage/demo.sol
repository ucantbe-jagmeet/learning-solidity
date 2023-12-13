// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // solidity versions

contract Demo {
    // bool hasFavoriteNumber = true;

    uint public favoriteNumber = 88; // int can be positive or negative , but uint is always positive

    // string favoriteNumberText = "88/ eighty-eight";

    // address myAddress = 0x4a909F94bb4fb71b9E9dA8F3aAc58565310bcB80;

    // bytes32 favoriteBytes32 = 'cat'; // can be hex value like  0x2aser25fs or something else

    function store(uint256 _favoriteNumber ) public {
        favoriteNumber = _favoriteNumber ;
        favoriteNumber = favoriteNumber + 1;
    }
    

    function retrieve( ) public view returns( uint) {
        return favoriteNumber;
    }



}