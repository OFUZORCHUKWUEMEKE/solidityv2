// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

contract Mapping {
    mapping(address => uint256) public data;

    function get(address _adr) public view returns (uint256) {
        // Mapping always returns a value.
        // If the value was never set, it will return the default value.
        return data[_adr];
    }

    function set(address _addr , uint256 _i)public{
        data[_addr] = _i;
    }

    function remove(address _add)public{
        delete data[_add];
    }
}


contract NestedMappings{
    mapping(address=>mapping(uint256=>bool)) public nested;

    function get(address _addr1,uint256 _i) public view returns(bool){
        return nested[_addr1][_i];
    }

    function set(address _addr1,uint256 _i, bool _boo)public{
        nested[_addr1][_i] =_boo;
    }

    function remove(address _addr1,uint256 _i)public{
        delete nested[_addr1][_i];
    }
}
