// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

import "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // function sayHello() public pure returns( string memory){
    //     return "Hello";
    // }

    // overiders
    // virtual override

    function store( uint256 _newNumber) public override  {
        myFavoriteNumber = _newNumber + 5;
    }

}