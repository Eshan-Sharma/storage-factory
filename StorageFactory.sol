//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public listOfSimpleStorageContracts;

    //function to deploy a contract from a contract
    function createSimpleStorageContact() public{
        SimpleStorage simpleStorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex,uint256 _simpleStorageNumber) public{
        //To interact with a contract you need
        //address
        //ABI - application binary interface
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}