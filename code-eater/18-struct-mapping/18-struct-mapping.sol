// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

struct Student {
    string name;
    uint class;
}

contract Local{

    mapping( uint => Student) public data;
    // mapping is different than array because there is no sequential order in mapping just like hash
    // the key cannot be types mapping , dynamic array, enum and struct
    // the values can be of any type
    
    function setter(uint _roll, string memory _name, uint _class ) public{
        data[_roll] = Student( _name, _class);
    }
}