// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "/forge-std/Script.sol"
import {DevOpsTools} from "../lib/foundry-devops/src/DevOpsTools.sol";
import {FundMe} from "../src/FundMe.sol";
contract FundFundMe is Script {

    function fundFundMe(address) public {
        vm.startBroadcast();
        FundMe(fundMe);
        vm.stopBroadcast();

    }

    function run() external {
    address fundMe = DevOpsTools.get_most_recent_deployment("FundMe, block.chainId ");
    fundFundMe(fundMe);


    } 
} 