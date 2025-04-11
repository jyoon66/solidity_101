// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

// Solidity Types
bool hasFavoriteNumber = true; // The variable `hasFavoriteNumber` represents the value `true`

contract SimpleStorage {
    // Basic types
    bool hasFavoriteNumber = true;
    uint256 favoriteNumber = 88;
    string favoriteNumberInText = "eighty-eight";
    int256 favoriteInt = -88;
    address myAddress = 0xaB1B7206AA6840C795aB7A6AE8b15417b7E63a8d;
    bytes32 favoriteBytes32 = "cat";
}

// Bytes and strings
bytes1 minBytes = "I am a fixed size byte array of 1 byte";
bytes32 maxBytes = "I am a fixed size byte array of 32 bytes";
bytes dynamicBytes = "I am a dynamic array, so you can manipulate my size";

// Contract Logic
uint256 favoriteNumber;