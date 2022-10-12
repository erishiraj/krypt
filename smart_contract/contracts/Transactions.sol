// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.0 <0.9.0;

contract Transactions {
    uint256 transactionCount;

    event Transfer(
        address from,
        address receiver,
        uint256 amount,
        string message,
        uint256 timestamp,
        string keyword
    );

    struct TransferStruct {
        address sender;
        address receiver;
        uint256 amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transferStruct;

    function addToBlockchain(
        address payable receiver,
        uint256 amount,
        string memory message,
        string memory keyword
    ) public {
        transactionCount += 1;
        transferStruct.push(
            TransferStruct(
                msg.sender,
                receiver,
                amount,
                message,
                block.timestamp,
                keyword
            )
        );

        emit Transfer(
            msg.sender,
            receiver,
            amount,
            message,
            block.timestamp,
            keyword
        );
    }

    function getAllTransactions() public view returns (Transactions) {}

    function getTransactionCount() public view returns (uint256) {}
}
