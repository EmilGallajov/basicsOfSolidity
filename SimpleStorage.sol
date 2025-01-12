// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24; 

contract SimpleStorage {
    uint256 public myfavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string  name;
    }
    
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function store(uint256 _favoriteNumber) public virtual { //virtual means that this function is overridable
        myfavoriteNumber = _favoriteNumber;
    }
    function retrieve() public view returns(uint256) {
        return myfavoriteNumber;
    }
}

contract SimpleStorage2 {
    // ...
}

contract SimpleStorage3 {
    // ...
}
