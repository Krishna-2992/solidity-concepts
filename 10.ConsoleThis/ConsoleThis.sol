//SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract ConsoleThis{
    function console() external view returns(ConsoleThis){
        return this;
    }
}

// giving --> address: 0x9bF88fAe8CF8BaB76041c1db6467E7b37b977dD7
// so in this case, "this" is exactly similar to "address(this)"
// ---remember!!