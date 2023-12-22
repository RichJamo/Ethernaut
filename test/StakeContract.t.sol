// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {StakeContract} from "../src/StakeContract.sol";
import {Token_ERC20} from "../../lib/forge-std/test/mocks/MockERC20.t.sol";

contract StakeContractTest is Test {
    StakeContract public stakeContract;
    Token_ERC20 public mockToken;

    function setUp() public {
        stakeContract = new StakeContract();
        mockToken = new Token_ERC20("Mock", "MCK", 18);
        mockToken.mint(address(this), 10e18);
    }

    function test_Staking(uint8 amount) public {
        mockToken.approve(address(stakeContract), amount);
        bool stakePassed = stakeContract.stake(amount, address(mockToken));
        assertTrue(stakePassed);
    }
}
