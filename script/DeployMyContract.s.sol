// script/DeployMyContract.s.sol
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/implementation/BeatForce.sol";

contract DeployMyContract is Script {
    function run() external {
        vm.startBroadcast();
        address beatForceAddress = address(new BeatForce());
        console.log("Deployed BeatForce at address:", beatForceAddress);

        vm.stopBroadcast();
    }
}
