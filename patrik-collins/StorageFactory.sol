// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //stating our version
import "./SimpleStorage.sol";

contract StorageFactory{
    
    // uint256 public favouriteNumber
    // type visibility 

    SimpleStorage public simpleStorage;

    function createSimpleStorageContract() public {
            simpleStorage = new SimpleStorage();
    }
}