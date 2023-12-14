// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // solidity versions

contract Demo {
    struct Person{
        uint favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping( string => uint) public nameToFavoriteNumber;

    function addPerson(string memory _name, uint _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name] = _favoriteNumber ; // to check whose belongs to given favorite number 
    }

}