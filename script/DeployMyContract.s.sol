// script/DeployMyContract.s.sol
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/BeatCoinFlip.sol";

contract DeployMyContract is Script {
    function run() external {
        vm.startBroadcast();

        new BeatCoinFlip();

        vm.stopBroadcast();
    }
}
