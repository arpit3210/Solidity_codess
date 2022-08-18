// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

contract Testcall
{
string public message;
uint public x;

event log(string);
fallback() external payable{
    emit log("fallback called");
}

function foo(string memory _message, uint _x) external payable returns(bool,uint)
{
message=_message;
x=_x;
return (true,999);
}
}


//  Testcall contract is calling by the call contract
// In call contract we used call keyword to call the function 
// In the call function we have to use abi.encodeWithSignature
// In TestCall contract we used fallback function because if some one calling this contract of function which does not exist automatically this function will execute
// Thats reason we used fallback function when we calls a function from external contract with call keyword which gernaly uses as a transfer the ether....

contract call{
bytes public data;
    function callfoo(address _test) external payable 
{
  (bool success,bytes memory _data)= _test.call{value:111}(abi.encodeWithSignature("foo(string,uint256)", "callingfooo",123));
  require(success,"call failed");

  data=_data;
}

function callDoesNOT(address _test) external{
    (bool success, )=_test.call(abi.encodeWithSignature("doesNotExist()"));
    require(success,"Call failed");
    //this function does not exist but we are calling to show that if function does not exist what happend
    // function will not fail in that case it will call automatically fallback function which exist in Testcall contract 
}
}



//main use of this example of contract is to show that how we can call another contract function with help of-->> call
  // benefts already defined in upper comment lines








//  Example 2 ---.>>>>   same as 1st one 



contract testingcon
{
uint value;
event fall(string);
event foos(string);
fallback() external payable 
{
emit fall("fallback function callled");
}

function fooo(uint _value) external payable 
{
value=_value;
emit foos("fooo function called recently");
}

}


contract calling{
uint public someval;
    function callingfoo(address _testadd) payable public 
    {
      (bool succsess,)=  _testadd.call{value:1234, gas:230000}(abi.encodeWithSignature("fooo(uint256)", 1234));
require(succsess,"callingfoo failed");
someval=1234;
    }
}