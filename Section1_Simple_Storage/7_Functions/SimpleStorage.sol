// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {

    uint256 favoriteNumber; // storage variable: it's stored in a section of the blockchain called "Storage"

    function store(uint256 _favoriteNumber) public {
        // the variable favorite number is updated with the value that is contained into the parameter `_favoriteNumber`
        favoriteNumber = _favoriteNumber;
        uint 256 testVar = 5;
    }

    function something() public {
        testVar = 6; // will raise a compilation error
        favoriteNumber = 7; // this can be accessed because it's in the main contract scope
    }

    function retrieve() public view returns(uint256) {
    return favoriteNumber;
    }
}