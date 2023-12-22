// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract StakeContract {
    error TransferFailed();

    mapping(address => uint256) public s_balances;

    function stake(uint256 amount, address token) external returns (bool) {
        // Check if the sender has approved the contract to spend 'amount' tokens
        require(
            IERC20(token).allowance(msg.sender, address(this)) >= amount,
            "Insufficient allowance"
        );

        // Check if the contract has sufficient balance to perform the transfer
        require(
            IERC20(token).balanceOf(msg.sender) >= amount,
            "Insufficient balance"
        );
        s_balances[msg.sender] += amount;
        bool success = IERC20(token).transferFrom(
            msg.sender,
            address(this),
            amount
        );
        if (!success) revert TransferFailed();
        return success;
    }
}
