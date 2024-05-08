//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage public simpleStorage;

    //function to deploy a contract from a contract
    function createSimpleStorageContact() public{
        simpleStorage = new SimpleStorage();
    }
}