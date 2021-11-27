// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

contract LoggerSmall {

    event LogSmall(uint256 indexed value);

    function example() external {
        emit LogSmall(5);
    }
}