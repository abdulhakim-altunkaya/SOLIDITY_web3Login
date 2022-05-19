//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.7;

contract ArrayInArray {
    string[][] public myArray;
    string[] internal child1 = ["chibatta", "lamb"];
    string[] internal child2 = ["tomatoes", "potatoes"];

    function addArray() external {
        myArray.push(child1);
        myArray.push(child2);
    }

    function returnArray() external view returns(string[][] memory) {
        return myArray;
    }
}