//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

//Inheritence
contract AddFiveStorage is SimpleStorage{
    function sayHello() public pure returns(string memory){
        return "Hello";
    }

    function store(uint256 _newNumber) public override  {
        myFavouriteNumber = _newNumber+5;
    }
}