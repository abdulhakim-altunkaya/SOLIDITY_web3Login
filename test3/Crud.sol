//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract Crud {
    struct User {
        uint id;
        string city;
    }

    uint public nextId = 1;

    User[] public allCities;

    function create(string memory _city) public {
        allCities.push(User(nextId, _city));
        nextId++;
    }

    function read1(uint _id) public view returns(User memory) {
        return allCities[_id-1];
    }
    function read2(uint _id) public view returns(string memory) {
        return allCities[_id-1].city;
    }
    string public myWord = "asdfwefw";
}