// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract stringsaver {
    string public data;

    function setData(string memory _data) public payable {
        data = _data;
    }
}
