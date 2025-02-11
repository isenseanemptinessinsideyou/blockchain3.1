# Blockchain 3.1

## Overview
This project implements an ERC-20 compatible token with additional functionality for retrieving transaction details and block timestamps.

### Token Details
- **Name**: AITU_DAMIR_SE2327  
- **Symbol**: MTK  
- **Initial Supply**: 2000 tokens  

## Smart Contract Functions

### 1. Constructor
Initializes the token with the specified name, symbol, and supply.

### 2. `getBlockTimestamp()`
- Returns the current block timestamp in Unix format.

### 3. `transferWithDetails(address recipient, uint256 amount)`
- Transfers tokens and emits the `TransactionDetails` event.
- **Event Parameters:**
  - `sender`: Address initiating the transfer.
  - `receiver`: Recipient address.
  - `amount`: Number of tokens transferred.
  - `timestamp`: Transaction timestamp.

### 4. `getSenderAndReceiver(address recipient)`
- Returns:
  - `sender`: Address calling the function.
  - `receiver`: Address specified as the recipient.

## Event: `TransactionDetails`
Emitted on each token transfer, logging the following details:
- `Sender address`
- `Receiver address`
- `Amount transferred`
- `Block timestamp`

## Deployment Instructions

1. **Open Remix IDE**
2. **Create a new file**: `YourContract.sol`
3. **Copy & Paste** the smart contract code into the file.
4. **Compile** the contract using Solidity compiler version `^0.8.22`.
5. **Deploy** the contract using one of the following environments:
   - JavaScript VM (Remix local blockchain)
   - MetaMask (connected to an Ethereum testnet)
   - Public testnets such as Ropsten or Goerli
6. **After Deployment**, interact with the contract:
   - Transfer tokens.
   - Retrieve transaction details.
   - Access block timestamp and sender/receiver metadata.

## Usage Guide

### 1. Interact with the Contract
After deployment, use the deployed contract interface in Remix or via Web3 tools.

### 2. MetaMask Setup
- Install [MetaMask](https://metamask.io/)
- Connect to an Ethereum testnet (e.g., Ropsten, Goerli, or Ganache)
- Add the deployed contract address in MetaMask to manage and interact with the tokens.

### 3. Testing the Contract
- **Transfer Tokens**: Call `transferWithDetails()` with the recipient's address and the amount to transfer.
- **Retrieve Metadata**:
  - Call `getBlockTimestamp()` to check the block timestamp.
  - Call `getSenderAndReceiver()` to verify sender and recipient addresses.

---
This README provides a structured guide to deploying, using, and testing your ERC-20 token contract. Make sure to test on a testnet before deploying on the Ethereum mainnet.
