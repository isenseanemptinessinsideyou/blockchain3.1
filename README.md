"# blockchain3.1" 
Functions
1. Constructor
Initializes the token:

Name: AITU_DAMIR_SE2327
Symbol: MTK
Initial supply: 2000 tokens
2. getBlockTimestamp()
Returns the block's current timestamp in Unix format.

3. transferWithDetails(address recipient, uint256 amount)
Performs a token transfer and emits the TransactionDetails event.

Event parameters:

sender: Address initiating the transfer.
receiver: Recipient address.
amount: Number of tokens transferred.
timestamp: Transaction timestamp.
4. getSenderAndReceiver(address recipient)
Returns:

sender: Address calling the function.
receiver: Address specified as the recipient.
Event
TransactionDetails
Logs:

Sender address
Receiver address
Amount transferred
Block timestamp
Deployment Instructions
Open Remix IDE.
Create a new file: #your file name#.
Copy the contract code into the file.
Compile the contract using Solidity compiler version ^0.8.22.
Deploy the contract using the JavaScript VM, MetaMask, or a testnet like Ropsten or Goerli.
After deployment, use the deployed contract interface to:
Transfer tokens.
Retrieve transaction details.
Access block timestamp and sender/receiver metadata.
Usage
Interact with the Contract
MetaMask Setup
Install MetaMask: MetaMask.
Connect to an Ethereum testnet (e.g Ganache).
Add the deployed contract address to MetaMask to interact with your tokens.
Test the Contract
Transfer Tokens:
Call transferWithDetails with the recipient's address and the number of tokens to transfer.

Retrieve Metadata:
Use getBlockTimestamp to check the block's timestamp or getSenderAndReceiver to view the sender and recipient addresses.
