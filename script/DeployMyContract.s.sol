// script/DeployMyContract.s.sol
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/implementation/BeatNaughtCoin.sol";

contract DeployMyContract is Script {
    function run() external {
        vm.startBroadcast();
        address beatNaughtCoinAddress = address(new BeatNaughtCoin());
        console.log(
            "Deployed BeatNaughtCoin at address:",
            beatNaughtCoinAddress
        );

        vm.stopBroadcast();
    }
}
