//SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 < 0.9.0; // Defines Solidity Version

contract SimpleStorage {
    
    // Variables
    uint256 favouriteNumber; // initialized to zero

    // Structs
    struct People {
        uint256 favouriteNumber;
        string name;
    }

    // Arrays
    People[] public people; // Dynamic Size Array
    // People2[10] public people2; // Fixed Size Array

    // mappings are like dictionaries
    mapping(string => uint256) public nameTofavouriteNumber;

    // Public function to set value
    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }
    // Public function to retrieve value
    function retrieve() public view returns(uint256) {
        return favouriteNumber;
    }

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        people.push(People({favouriteNumber: _favouriteNumber, name: _name}));
        nameTofavouriteNumber[_name] = _favouriteNumber;
    }

}
