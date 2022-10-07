// SPDX-License-Identifier:MIT

pragma solidity >=0.8.0 <0.9.0;

contract something
{
    bytes3 public b3;
    bytes2 public b2;

    function SettingTheValue() public 
    {
    b3='dfg';
    }


 function Length() public view returns(uint)
    {
        return b3.length;
    }


}


// This is simple smart contract to set the data in hexadecimal form,  Hexadecimal meaning the value of the data is base value 16
// Same thing appies in this also that this is fixed array, so we can not use push and pop keyword to delete and set element in this
// Bytes array also two types Fixed Size array and Dynamic Type array
// This Example is Fixed size array of bytes/