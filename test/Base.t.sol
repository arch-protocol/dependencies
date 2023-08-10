// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

import { Test } from "forge-std/Test.sol";

contract BaseState is Test {
    function setUp() public { }

    function _sendArchRequest(
        uint256 indexAmount,
        address indexToken,
        address baseToken,
        bool isMinting
    ) internal returns (bytes memory res) {
        string[] memory inputs = new string[](7);
        inputs[0] = "node";
        inputs[1] = "requests/fetch-arch-quote.js";
        inputs[2] = vm.toString(indexAmount);
        inputs[3] = vm.toString(indexToken);
        inputs[4] = vm.toString(baseToken);
        inputs[5] = vm.toString(isMinting);
        inputs[6] = vm.toString(block.chainid);
        res = vm.ffi(inputs);
    }
}
