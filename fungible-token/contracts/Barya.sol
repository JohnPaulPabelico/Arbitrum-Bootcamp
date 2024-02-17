// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Barya is ERC20{
    constructor() ERC20("Barya", "PETOT") 
    {}
}