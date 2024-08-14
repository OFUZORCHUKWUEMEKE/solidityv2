
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.21;

contract Basic {
    uint256 public count;


    // Function to get the current count
    function get() public view returns(uint256){
        return count;
    }


  // Function to increment count by 1
    function inc()public{
        count +=1;
    }

  // Function to decrement count by 1
    function dec() public{
        count -= 1;
    }
}