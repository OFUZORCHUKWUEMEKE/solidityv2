
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.21;

contract A {
    function foo() public pure virtual returns(string memory){
        return "A";
    }
}

contract B is A {
    function foo() public pure virtual override returns(string memory){
        return "B";
    }
}

contract C is A {
    function foo() public pure virtual override returns(string memory){
        return "C";
    }
}

// Contracts can inherit from multiple parent contracts.
// When a function is called that is defined multiple times in
// different contracts, parent contracts are searched from
// right to left, and in depth-first manner.

contract D is B, C {
    // D.foo() returns "C"
    // since C is the right most parent contract with function foo()
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }
}

contract E is C, B {
    // E.foo() returns "B"
    // since B is the right most parent contract with function foo()
    function foo() public pure override(C, B) returns (string memory) {
        return super.foo();
    }
}

