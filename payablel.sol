// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

contract Payable {
    address payable public owner;

    constructor() payable {
        owner = payable(msg.sender);
    }

    // Function to deposit Ether into this contract.
    // Call this function along with some Ether.
    // The balance of this contract will be automatically updated.
    function deposit() public payable {}

    function notPayable() public {}

    function withdraw() public {
        uint256 amount = address(this).balance;

        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }

    function transfer(address payable _to,uint256 _amount)public{
        (bool success,) = _to.call{value:_amount}("");
        require(success,"Failed to send Ether"); 
    }
}
