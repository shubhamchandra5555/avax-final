// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    // Store item data (item ID => item price)
    mapping(uint256 => uint256) public itemPrices;

    constructor() ERC20("Degen Gaming Token", "DGT") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function redeem(uint256 itemId) public {
        require(balanceOf(msg.sender) >= itemPrices[itemId], "Insufficient balance");
        
        // Determine the logic to deliver the in-game item based on the itemId.
        // This could involve updating the player's in-game inventory, database, or any other relevant actions.
        // For this example, let's assume we update a player's inventory.
        updatePlayerInventory(msg.sender, itemId);
        
        // Deduct the token amount based on the item's price.
        _burn(msg.sender, itemPrices[itemId]);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Owner can set the price of an in-game item
    function setItemPrice(uint256 itemId, uint256 price) public onlyOwner {
        itemPrices[itemId] = price;
    }

    // Internal function to update a player's inventory (customize this for your game)
    function updatePlayerInventory(address player, uint256 itemId) internal {
        // Implement the logic to update the player's in-game inventory.
        // For example, you might add the item to an array or mapping.
        // Emit an event to log the item redemption for tracking purposes.
    }
}
