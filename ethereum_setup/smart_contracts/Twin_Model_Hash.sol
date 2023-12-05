// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0;

/**
* This smart contract store the twin model hash in blockchain.
*/
contract Twin_Model_Hash {

     /**
     * Variable to define who can deploy the contract.
     */
    address owner;  // address indicates variable type, in this case, contract creator account address.

    /**
     * Constructor code is only run when the contract is created.
     */
    constructor() {
         // The msg variable is a special global variable containing properties allowing blockchain access.
        owner = msg.sender; //msg.sender indicates the contract creator (contract owner)
    }

    /**
     * Modifier to ensure only the admin can execute certain functions.
     */
    modifier onlyOwner() {
        require(msg.sender == owner);
        _; // ; indicates it is a modifier function
    }

}