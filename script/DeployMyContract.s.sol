// script/DeployMyContract.s.sol
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/implementation/BeatKing.sol";

contract DeployMyContract is Script {
    function run() external {
        vm.startBroadcast();
        address beatKingAddress = address(new BeatKing());
        console.log("Deployed BeatKing at address:", beatKingAddress);

        vm.stopBroadcast();
    }
}
