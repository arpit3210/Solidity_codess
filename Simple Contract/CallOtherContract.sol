// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract CallTestContract{

function setx(address _test,uint _x) public{
    TestContract(_test).setx(_x);
}

function getx(address _test) public view returns(uint)
{
  uint x = TestContract(_test).getx();
   return x;
}


function setxandReceiveEther(TestContract _test,uint _x) payable public 
{
    _test.setxandReceiveEther{value:msg.value}(_x);
}


function getxandvalue(TestContract _test) public view returns(uint x,uint value)
{
(x,value)=_test.getxandvalue();

}

}


contract TestContract{

uint public x;
uint public value=129;


function setx(uint _x) external 
{
x=_x;
}

function getx() external view returns(uint) 
{
return x;
}

function setxandReceiveEther(uint _x) external payable 
{
x=_x;
value=msg.value;
}


function getxandvalue() external view returns(uint, uint)
{

return (x,value);

}
}