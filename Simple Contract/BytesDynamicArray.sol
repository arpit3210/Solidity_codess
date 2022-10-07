// SPDX-License-Identifier:MIT

pragma solidity >=0.8.0 <0.9.0;

contract something 
{
    bytes public B3='ABC';

    function changeTheValue( ) public 
    {
        B3='dGH';
    }

    function PushingValue(bytes1 _value) public 
    {
        B3.push(_value);
    }


    function PopValue() public 
    {
        B3.pop();
    }

    function Length() public view returns(uint)
    {
        return B3.length;
    }
}



// In PushingValue Function we can only pass the arguments in bytes form
// ASCII Code
// This is the example of Dynamic Bytes type Array