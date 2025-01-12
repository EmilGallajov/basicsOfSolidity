// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {

    // function sayHi() public pure returns (string memory) {
    //     return "sayHi bro!";
    // }

    //inheritance
    function store(uint256 _newNumber) public override {
        myfavoriteNumber = _newNumber + 5;
    }

}
