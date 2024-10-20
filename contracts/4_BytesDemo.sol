// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;
contract BytesDemo{
    // 字节数组长度1，超过则报错     ‘aa'占长度1.
    bytes1 public length1 = 0xaa; // (二进制）10101010 --> aa  
    // bytes1 public length2 = aa; 

    bytes1 public b1 = 'a';

    bytes32 public b32="ab";

    function get_len() public  returns (uint256)  {
        b1='e';
        return b1.length;
    }
    function get_len_only_read() public view  returns (uint256)  {
        // b1='e'; //加了 view 之后，不可修改变量的值
        return b1.length;
    }
}