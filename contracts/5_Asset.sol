// SPDX-License-Identifier: GPL-3.0
pragma solidity  >=0.7.0 <0.9.0;

contract Asset{
    string public name;
    string public symbol;
    constructor(string memory name_, string memory symbol_){
        name = name_;
        symbol = symbol_;
    }

}