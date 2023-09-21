// SPDX-License-Identifier: Apache License 2.0
pragma solidity ^0.8.20;

interface IFxERC20RootTunnel {
    function deposit(address rootToken, address user, uint256 amount, bytes calldata data)
        external;
}
