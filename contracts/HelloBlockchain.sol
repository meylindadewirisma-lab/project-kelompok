// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract HelloBlockchain {
    string public message = "Hello, Blockchain!";

    event MessageChanged(address indexed sender, string newMessage);

    function setMessage(string calldata newMessage) external {
        require(bytes(newMessage).length > 0, "empty message");

        message = newMessage;

        emit MessageChanged(msg.sender, newMessage);
    }
}