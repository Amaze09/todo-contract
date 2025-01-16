// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Tasks {

    bytes32[] public taskHashes;
    mapping (bytes32 => bool) public isCompleted;

    function storeHash(bytes32 taskHash) public {
        taskHashes.push(taskHash);
        isCompleted[taskHash] = false;
    }

    function completeTask(bytes32 taskHash) public {
        isCompleted[taskHash] = true;
    }

    function isTaskCompleted(bytes32 taskHash) public view returns (bool) {
        return isCompleted[taskHash];
    }
}
