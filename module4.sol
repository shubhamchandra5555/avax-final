// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    constructor() ERC20("Degen Gaming Token", "DGT") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function redeem(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        _burn(msg.sender, amount);
        // Implement the logic for redeeming items from the in-game store here.
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
