// SPDX-License-Identifier: Apache License 2.0
pragma solidity ^0.8.20;

interface IUChildERC20 {
    /**
     * @notice called when user wants to withdraw tokens back to root chain
     * @dev Should burn user's tokens. This transaction will be verified when exiting on root chain
     * @param amount amount of tokens to withdraw
     */
    function withdraw(uint256 amount) external;
}
