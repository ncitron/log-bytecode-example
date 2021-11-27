// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

contract LoggerBig {

    event LogBig(uint256 value);

    function example() external {
        emit LogBig(5);
    }
}