// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract AITU_DAMIR_SE2327 is ERC20, ERC20Permit {
    // Event to log transaction information
    event TransactionDetails(
        address indexed sender,
        address indexed receiver,
        uint256 amount,
        uint256 timestamp
    );

    // Constructor to initialize token and mint initial supply
    constructor() ERC20("AITU_DAMIR_SE2327", "MTK") ERC20Permit("AITU_DAMIR_SE2327") payable {
        _mint(msg.sender, 2000 * 10 ** decimals());
    }

    // Function to return the block timestamp
    function getBlockTimestamp() public view returns (uint256) {
        return block.timestamp;
    }

    // Function to transfer tokens with additional transaction details
    function transferWithDetails(address recipient, uint256 amount) public returns (bool) {
        // Perform the transfer
        bool success = transfer(recipient, amount);

        // Log transaction details if the transfer is successful
        if (success) {
            emit TransactionDetails(msg.sender, recipient, amount, block.timestamp);
        }
        return success;
    }

    // Function to retrieve sender and receiver addresses
    function getSenderAndReceiver(address recipient) 
        public 
        view 
        returns (address sender, address receiver) 
    {
        sender = msg.sender;  // Address calling the function
        receiver = recipient; // Address passed as the recipient
    }
}
