# Solidity Contract: DegenToken

This Solidity smart contract, named `DegenToken`, is designed for use in the Degen Gaming platform. It represents an ERC-20 token with added functionality for in-game item redemption. The contract is designed to be used on the Ethereum blockchain.

## Contract Overview

- **Token Name and Symbol**: The token is named "Degen Gaming Token" (DGT) and is an ERC-20 token.

- **In-Game Items**: The contract includes functionality for players to redeem in-game items using the tokens they hold.

## Functions

1. **Constructor**: The constructor function initializes the token with the name "Degen Gaming Token" and symbol "DGT" when the contract is deployed.

2. **mint(address to, uint256 amount) public onlyOwner**: This function allows the contract owner to mint additional tokens and send them to a specified address. It can be used to increase the token supply.

3. **redeem(uint256 itemId) public**: This function enables players to redeem in-game items using their tokens. It includes the following steps:
   - Checks if the player has a sufficient balance of tokens for the item.
   - Implements logic (customizable) to deliver the in-game item based on the `itemId`. This could involve updating the player's in-game inventory, database, or other actions.
   - Deducts the token amount based on the item's price.

4. **burn(uint256 amount) public**: This function allows anyone to burn (destroy) their own tokens. It includes checks to ensure that the burn amount is valid and that the sender has a sufficient balance.

5. **setItemPrice(uint256 itemId, uint256 price) public onlyOwner**: This function enables the owner to set the price of an in-game item, customizing the cost of items.

6. **updatePlayerInventory(address player, uint256 itemId) internal**: This is an internal function that can be customized to

