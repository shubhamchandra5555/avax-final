// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    mapping(address => bool) private redeemedItems;
    uint256 public constant REWARD_AMOUNT = 1000 * 10**18; // 1000 tokens as reward

    constructor() ERC20("DegenToken", "DEGEN") {
        _mint(msg.sender, REWARD_AMOUNT);
    }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    function redeemItem() public {
        require(balanceOf(msg.sender) >= REWARD_AMOUNT, "Insufficient balance for redemption");
        require(!redeemedItems[msg.sender], "Item already redeemed");

        redeemedItems[msg.sender] = true;
        _burn(msg.sender, REWARD_AMOUNT);
        // Add additional logic for granting the in-game item to the player
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}
