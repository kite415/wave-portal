// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {

    uint64 totalWaves;
    mapping(address => uint64) public addressWaves;

    constructor() {
        console.log("Contract Executed");
    }

    // when wave() is called, it adds one wave to our total count
    function wave() public {
        addressWaves[msg.sender]++;
        totalWaves++;
        console.log("%s has waved %d times.", msg.sender, addressWaves[msg.sender]);
    }

    // gets us the total wave count
    function getTotalWaves() public view returns (uint64) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}