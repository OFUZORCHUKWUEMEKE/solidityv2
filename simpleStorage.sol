
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.21;

contract SimpleStorage{
    // State variable to store a number
    uint256 public num;

    // You need to send a transaction to write to a state variable.
    function set(uint256 _num)public{
        num = _num;
    }
    // You can read from a state variable without sending a transaction.
    function get() public view returns(uint256){
        return num;
    }
}