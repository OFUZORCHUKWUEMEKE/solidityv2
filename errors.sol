// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.21;

Contract Errors {
    function testRequire(uint256 _i)public pure{
         // Require should be used to validate conditions such as:
        // - inputs
        // - conditions before execution
        // - return values from calls to other functions
        require(_i > 10,"Input must be greater than 10");
    }

    function testRevert(uint256 _i) public pure{
        if(_i <=10){
            revert("Input must be greater than 10");
        }
    }
    uint256 public num;

    function textAssert()public view{
        // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of num
        assert(num == 0);
    }
    // custome error
    error InsufficientBalance(uint256 balance,uint256 withdrawAmount);
}

contract Account {
    uint256 public balance;
    uint256 public constant MAX_UINT = 2 ** 256 -1;

    function Deposit(uint256 _amount)public{
        uint256 oldBalance = balance;
        uint256 newBalance = balance + _amount;
        require(newBalance >= oldBalance , "Overflow");

        balance = newBalance;
        assert(balance >= oldBalance);

    }

    function withdraw(uint256 _amount)public {
        uint256 oldBalance = balance;

        require(balance >= _amount,"UnderFlow");
        if(balance < _amount){
            revert("Underflow");
        }
        balance -= _amount;
        assert((balance<= oldBalance));
    }

   
    // balance =
}