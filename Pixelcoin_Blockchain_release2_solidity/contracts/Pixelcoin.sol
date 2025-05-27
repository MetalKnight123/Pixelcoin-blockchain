// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Pixelcoin is ERC20, Ownable {
    constructor(address initialOwner) ERC20("Pixelcoin", "PXL") Ownable(initialOwner) {
        _mint(initialOwner, 21_000_000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
