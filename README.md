# P2P Lending Smart Contract - DeFi

This is a Solidity smart contract for a peer-to-peer lending platform. The contract allows depositors to deposit tokens and create credit options with different interest rates, durations, and collateral rates. Borrowers can then borrow tokens from depositors by providing collateral and selecting a credit option. The contract also allows borrowers to repay their loans with interest.

## Contract Structure
The contract is structured into several structs:
*  ``Depositor``: stores the amount of tokens deposited by a depositor and their available amount.
* ``CreditOptions``: stores the maximum and minimum loan amounts, interest rate, maximum duration, collateral rate, and whether the credit option is active or not.
*  ``Borrower``: stores the collateral amount and available collateral amount of a borrower, as well as their loan amount and repaid amount.
*  ``Credit``: stores the loan amount, repaid amount, start and end times, interest rate, collateral rate, depositor address, and whether the credit is active or not.

The contract also has several mappings:
*  ``depositors``: maps depositor addresses to ``Depositor`` structs.
*  ``creditOptions``: maps depositor addresses to arrays of ``CreditOptions`` structs.
*  ``borrowers``: maps borrower addresses to ``Borrower`` structs.
*  ``credits``: maps borrower addresses to arrays of ``Credit`` structs.

## Functions
The contract has several functions:
*  ``depositMoney``: allows depositors to deposit tokens into the contract.
*  ``withdrawMoney``: allows depositors to withdraw tokens from the contract.
*  ``addCreditOption``: allows depositors to create credit options.
*  ``adjustCreditOption``: allows depositors to adjust credit options to make them active or inactive.
*  ``depositCollateral``: allows borrowers to deposit collateral tokens into the contract.
*  ``withdrawCollateral``: allows borrowers to withdraw collateral tokens from the contract.
*  ``borrowMoney``: allows borrowers to borrow tokens from depositors.
*  ``repay``: allows borrowers to repay their loans with interest.

## Modifiers
The contract has several modifiers:
*  ``onlyDepositor``: restricts a function to depositors.
*  ``onlyBorrower``: restricts a function to borrowers.
*  ``onlyValidCreditOption``: restricts a function to valid credit options.

## Usage
To use the contract, depositors must first deposit tokens into the contract using the ``depositMoney`` function. They can then create credit options using the ``addCreditOption`` function. Borrowers can then deposit collateral tokens into the contract using the ``depositCollateral`` function and borrow tokens from depositors using the ``borrowMoney`` function. Borrowers can repay their loans with interest using the ``repay`` function. Deposit and withdrawal of tokens and collateral can be done using the ``withdrawMoney`` and ``withdrawCollateral`` functions, respectively.

## Disclaimer
This smart contract is provided as-is and is not guaranteed to be bug-free or secure.
