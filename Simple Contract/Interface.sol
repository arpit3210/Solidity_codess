// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

interface ICounter{

    function count() external view returns(uint);
    function inc() external ;
}


contract CallInterface
{
uint public count;
  function example(address _test) public 
  {
      ICounter(_test).inc();
     count = ICounter(_test).count();
     
  }

}

// main use of interface in Smart Contract is if you don't want to copy lines of code which is not nessesary, you can also use interface 
// With the help of interface we can directly call these function but at the time of deployement we can just put the address at the  time of deployement 
// Smart contract address will be that one whose function is being called by the Contract Functions  (which is mention in example function address _test) 



contract Counter
{

    uint value;


    function count() external view  returns(uint)
    {
        return value;
    }

    function inc() external 
    {
value=value+1;
    }

    function dec() external
    {
value=value-1;
    }
}

//Suppose this Counter Contract is already deployed on Blockchain 
//Now you have the address of this Counter smart_contract --->>> which you can put into the CALLinterface SmartContract Function where the contract function is being called