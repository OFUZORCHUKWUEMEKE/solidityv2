// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.21;

contract RecieveEther{

    recieve() external payable{}

    fallback() external payable{}

    function getBalance() public view returns(uint256){
        return address(this).address;
    }

}

contract SendEther{
    function sendViaTransfer(address payable _to)public payable{
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to)public payable{
        bool sent = _to.send(msg.value);
        require(sent,"Failed to send Ether");
    }

    function sendViaCall(address payable _to)public payable{
        // Call returns a boolean value indicating success or failure.
        // This is the current recommended method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }

}