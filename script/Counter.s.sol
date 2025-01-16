// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Tasks} from "../src/Tasks.sol";

contract CounterScript is Script {
    Tasks public tasks;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        tasks = new Tasks();

        vm.stopBroadcast();
    }
}

// deployment forge script script/Deploy.sol:Deploy --rpc-url <YOUR_RPC_URL> --private-key <YOUR_PRIVATE_KEY> --broadcast
