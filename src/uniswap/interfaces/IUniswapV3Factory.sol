// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.17;

/// @title The interface for the Uniswap V3 Factory
/// @notice The Uniswap V3 Factory facilitates creation of Uniswap V3 pools and control over the
/// protocol fees
interface IUniswapV3Factory {
    function createPool(address tokenA, address tokenB, uint24 fee)
        external
        returns (address pool);

    function setOwner(address _owner) external;

    function enableFeeAmount(uint24 fee, int24 tickSpacing) external;

    function owner() external view returns (address);

    function feeAmountTickSpacing(uint24 fee) external view returns (int24);

    function getPool(address tokenA, address tokenB, uint24 fee)
        external
        view
        returns (address pool);
}
