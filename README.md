## Ethernaut Challenges

**These are my solution contracts to the Ethernaut challenges**

(The first couple of challenges are skipped because they are simple and don't require contracts)

Coin Flip:
The contract exploits the fact that the hash of the blocknumber can be known by another contract on the chain and used to predict the (supposedly random) coin flip

Telephone:
Here we exploit the fact that if we get one contract (contract 1) to call another (contract 2), then tx.origin will be the address of the caller of contract1 (in this case an EOA), whereas msg.sender will be the address of contract1.

Token:
Here we exploit the fact that in Solidity versions before 0.7.0, overflows weren't checked (you had to use SafeMath as an import), so we can overflow the balance check function to make it possible to transfer tokens we don't own to ourselves

Delegation:
