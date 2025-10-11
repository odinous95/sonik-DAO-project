// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Sonik is Ownable {
    uint256 private s_number;

    event NumChanged(uint256 newNum);

    constructor(address initialOwner) Ownable(initialOwner) {}

    function store(uint256 num) public onlyOwner {
        s_number = num;
        emit NumChanged(num);
    }

    function getNumber() public view returns (uint256) {
        return s_number;
    }
}
