// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.21;

contract DataLocations {
    uint256[] public arr;
    mapping(uint256 => address) map;

    struct Mystruct {
        uint256 foo;
    }

    mapping(uint256 => Mystruct) myStructs;

    function f() public {
        // _f(arr,map,myStructs[1]);
        // get a struct from a mapping
        Mystruct storage myStruct = myStructs[1];
        // create a struct in memory
        Mystruct memory myMemStruct = Mystruct(0);
    }

    function _f(
        uint256[] storage _arr,
        mapping(uint256 => address) storage _myStruct
    ) internal {}

    function g(uint256[] memory _arr) public returns (uint256[] memory) {}

    function h(uint256[] calldata _arr) external {}
}
