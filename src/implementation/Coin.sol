// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "../../lib/openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "../../lib/openzeppelin-contracts/contracts/access/Ownable.sol";
import "../interfaces/ICoin.sol";

contract StableCoinToken is ERC20, ICoin, Ownable {
    constructor(string memory _name, string memory _symbol, address _initialOwner) ERC20(_name, _symbol) Ownable(_initialOwner) {
    }

    function mint(address account, uint256 amount) onlyOwner external override returns(bool){
        _mint(account, amount);
        return true;
    }

    function burn(address account, uint256 amount) onlyOwner external override returns(bool){
        _burn(account, amount);
        return true;
    }
}
