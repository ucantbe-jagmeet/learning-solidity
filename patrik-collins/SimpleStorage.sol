// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

contract SimpleStorage {
    // basic types: boolean, unit, int, address, bytes
    uint256 public myfavouriteNumber = 5; //default value 0

    // uint256[] listofFavouriteNumbers; //[ 0, 78, 90]
    struct Person{
        uint256 favouriteNumber;
        string name;
    }

    // Person public pat = Person(7,"Pat");
    Person[] public listOfPeople;



    function store( uint256 _favouriteNumber) public {
        myfavouriteNumber = _favouriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myfavouriteNumber;
    }

    function addPerson (string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push(Person(_favouriteNumber, _name));
 
    }

}