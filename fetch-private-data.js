const { ethers } = require("ethers");
const dotenv = require("dotenv");
// Set up the provider
dotenv.config();

console.log(process.env.SEPOLIA_RPC_URL)

const provider = new ethers.JsonRpcProvider(process.env.SEPOLIA_RPC_URL);

// Load environment variables from .env file
// Contract address and storage slot
const contractAddress = '0x46351FE33891E8685F2A928F0dD7C9f8Cb33d139';
const storageSlot = [0, 1, 2, 3, 4, 5, 6]; // Slot number to check

async function getStorageSlot(slot) {
    // Fetch the data from the specified slot
    return await provider.getStorage(contractAddress, slot);
}

async function main() {
    for (const slot of storageSlot) {
        try {
            const data = await getStorageSlot(slot);
            console.log(`Storage at slot ${slot}:`, data);
        } catch (error) {
            console.error('Error fetching storage:', error);
        }
    }

}

main();
