// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; //stating our version
import "./SimpleStorage.sol";

contract StorageFactory{
    
    // uint256 public favouriteNumber
    // type visibility 

    SimpleStorage[] public listOfSimpleStorageContracts;
    // address[] public listOfSimpleStorageAddresses;

    function createSimpleStorageContract() public {
          SimpleStorage  newSimpleStorageContract = new SimpleStorage();
          listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore( uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
            // ABI - Application Binary Interface
            SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
            // SimpleStorage mySimpleStorage = SimpleStorage(listOfSimpleStorageAddresses[_simpleStorageIndex]);
            mySimpleStorage.store( _newSimpleStorageNumber);
    }

    function sfGet( uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}