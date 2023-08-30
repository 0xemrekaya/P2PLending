//SPDX-Lincense-Identifier: MIT

import "./interfaces/IERC20.sol";

pragma solidity ^0.8.19;

contract P2PLending{

    struct Depositor{
        address depositorAddress;
        uint256 amount;
        uint256 interestRate;
        uint256 availableAmount;
        uint256 maxPerAddress;
    }
    Depositor[] public depositors;
    address public allowedToken;
    function depositMoney(
        uint256 _amount,
        uint256 _interestRate,
        uint256 _maxPerAddress
    ) public {
        IERC20 token = IERC20(allowedToken);

        Depositor memory newDepositor;
        require(token.transferFrom(msg.sender, address(this), _amount), "Transfer failed");
        require(newDepositor.amount> 0, "Amount must be greater than 0");
        require(newDepositor.interestRate> 0, "Interest rate must be greater than 0");
        require(newDepositor.maxPerAddress> 0, "Max per address must be greater than 0");

        newDepositor = Depositor({
            depositorAddress: msg.sender,
            amount: _amount,
            interestRate: _interestRate,
            availableAmount: _amount,
            maxPerAddress: _maxPerAddress
        });
        depositors.push(newDepositor);
    }

}
