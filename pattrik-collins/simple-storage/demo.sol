// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; // solidity versions

contract Demo {
    // bool hasFavoriteNumber = true;

    uint public favoriteNumber = 88; // int can be positive or negative , but uint is always positive
    
    // uint[] listOfFavoriteNumbers;  // array declaration


    // Person public pat = Person(7, 'Pat'); 
    // Person public mariah = Person({ favNumber: 202, name:'Mariah'}); 
    // Person public jon = Person({ favNumber: 99, name:'Jon'}); 


    // string favoriteNumberText = "88/ eighty-eight";

    // address myAddress = 0x4a909F94bb4fb71b9E9dA8F3aAc58565310bcB80;

    // bytes32 favoriteBytes32 = 'cat'; // can be hex value like  0x2aser25fs or something else

    // function store(uint256 _favoriteNumber ) public {
    //     favoriteNumber = _favoriteNumber ;
    //     favoriteNumber = favoriteNumber + 1;
    // }
    
    // view
    // function retrieve( ) public view returns( uint) {
    //     return favoriteNumber;
    // }
    
    // pure
    // function retrievePure( ) public pure returns( uint) {
    //     return 19;
    // }

    struct Person {
        uint favNumber;
        string name;
    }  // Structure Declaration

    Person[] public listOfPeople;    

    function addPerson(uint _favoriteNumber, string memory _name) public {
        // Person memory newPerson = Person(_favoriteNumber, _name);
        // listOfPeople.push(newPerson)
        listOfPeople.push( Person(_favoriteNumber, _name) );
    }

    // calldata -> It is a temporary variable that can not be modified 
    // memory -> It is a temporary variable that can be modified 
    // storage -> It is a Permanent variable that can be modified 


}