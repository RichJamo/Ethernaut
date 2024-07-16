const { ethers } = require("ethers");

async function getStorageSlot(contractAddress, slot) {
    const provider = new ethers.providers.JsonRpcProvider("https://sepolia.infura.io/v3/1a34a37dbf4e44409187911e6573a844");
    const result = await provider.getStorageAt(contractAddress, slot);
    return result;
}

async function main() {
    const contractAddress = "0xA7123b8b6B91f3b129D7Ed4a26Bcbd1d3fb8D58f";
    const firstSlot = 0; // First storage slot
    const secondSlot = 1; // Second storage slot

    try {
        const firstSlotValue = await getStorageSlot(contractAddress, firstSlot);
        const secondSlotValue = await getStorageSlot(contractAddress, secondSlot);

        console.log("First storage slot (0):", firstSlotValue);
        console.log("Second storage slot (1):", secondSlotValue);
    } catch (error) {
        console.error("Error:", error);
    }
}

main();
