// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.10;


contract Receiver {
    event Log(bytes data);

    function transfer(address _to, uint _amount) external {
        emit Log(msg.data);
        // data is
        // Function selector: 0xa9059cbb
        // address to: 0000000000000000000000005b38da6a701c568545dcfcb03fcb875f56beddc4
        // uint amount: 000000000000000000000000000000000000000000000000000000000000000b
    }
}


contract FunctionSelector {
    function getSelector(string calldata _func) external pure returns (bytes4) {
        return bytes4(keccak256(bytes(_func)));
        // if you input "transfer(address,uint256)" on this function
        // you will get 0xa9059cbb, which is the Function Selector
    }
}
