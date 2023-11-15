// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Demo {
     // mapping from address to uint
     mapping (address => uint) public myMap;

     function get(address _addr) public view returns (uint) {
        // mapping always returns a value.
        // If the value was never set, it will return the default value.
        return myMap[_addr];
     }

      function set(address _addr, uint _i) public {

        //update the value at this address
        myMap[_addr] = _i;
     }

     function remove(address _addr) public {
        delete myMap[_addr];
     }
}