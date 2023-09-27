// SPDX-License-Identifier: Apache License 2.0
pragma solidity ^0.8.20;

interface IFxERC20ChildTunnel {
    function withdrawTo(address childToken, address receiver, uint256 amount) external;
}
