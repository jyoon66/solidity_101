// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract SimpleStorage {

    uint256[] list_of_favorite_numbers;

    struct Person {
        uint256 my_favorite_number;
        string name;
    }

    Person public my_friend = Person(7, 'Pat');
    /* equals to
    Person public my_friend = Person({
        favorite_number:7,
        name:'Pat'});
    */

    Person[] public list_of_people; // this is a dynamic array
    Person[3] public another_list_of_three_people; // this is a static array

    function addPerson(string memory _name, uint256 _favoriteNumber) public {  // cannot use storage as input parameters
        uint256 test = 0; // variable here can be stored in memory or stack
        listOfPeople.push(Person(_favoriteNumber, _name));
    }

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