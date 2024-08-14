// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

contract Arrays {
    uint256[] public arr;

    uint256[3] public arr2 = [0, 1, 2];
    // Fixed sized array, all elements initialize to 0
    uint256[10] public myFixedSizeArr;

    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }

    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    // Solidity can return the entire array.
    // But this function should be avoided for
    // arrays that can grow indefinitely in length.
    function push(uint256 _i) public {
        arr.push(_i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns(uint256){
        return arr.length;
    }

    function remove(uint256 index)public{
        delete arr[index];
    }

    function examples() external{
         // create array in memory, only fixed size can be created
         uint256[] memory a = new uint256[](5);
    }
}
