//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract HashFunc {
    function hash(string memory text, uint x, address addr) external pure returns(bytes32) {
        return keccak256(abi.encodePacked(text, x, addr));
    }

    function encode(string memory text0, string memory text1) external pure returns(bytes memory) {
        return abi.encode(text0, text1);
    }

    function encodePacked(string memory text0, string memory text1) external pure returns(bytes memory) {
        return abi.encodePacked(text0, text1);
    }
}



