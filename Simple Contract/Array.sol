
// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.0 <0.9.0;

contract something{

uint[5] public Arr =[5,6,7,8,9];

function Replace(uint _num) public 
{
    Arr[4]=_num;
}

function LengthOfArray() public view returns(uint)
{
return  Arr.length;
}

}


//This is a simple Smart contract for chaning the value of an Element of an array if 
//if Array is Fixed (Noted-- In Dynamic Array we can not use Push and pop Function )
// thats reason we did not use push and pop funtion in this smart contract 