// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8;

import "hardhat/console.sol";

contract HardhatContract {
    function test(uint amount) external {
        uint x = 123;
        console.log(msg.sender, amount, x);
        console.log(true, "thinking it through");
    }
}


// Old way of console log
contract MyContract {
    event Log(address sender, uint amount, uint x);

    function test(uint amount) external {
        uint x = 123;
        //code
        emit Log(msg.sender, amount, x);
    }
}
