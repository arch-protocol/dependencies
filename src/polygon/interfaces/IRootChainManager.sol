// SPDX-License-Identifier: Apache License 2.0
pragma solidity ^0.8.20;

interface IRootChainManager {
    function depositFor(address user, address rootToken, bytes calldata depositData) external;

    function depositEtherFor(address user) external payable;

    function exit(bytes calldata inputData) external;
}
