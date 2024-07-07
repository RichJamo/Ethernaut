const { execSync } = require('child_process');

// Use the 1Password CLI to fetch the private key
const DEPLOYER_PRIVATE_KEY = execSync('op read op://Private/PrivateWallet/PK', { encoding: 'utf-8' }).trim();

// Output the private key
console.log(DEPLOYER_PRIVATE_KEY);
