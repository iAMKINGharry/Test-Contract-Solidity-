// SPDX-License-Identifier: MIT

pragma solidity >= 0.7.3;

contract TestSC {

    event updatedMessages(string oldStr, string newStr);

    string public message;
    constructor (string memory initMessage) {

        message = initMessage;
    }
    function update(string memory newMessage) public {
        string memory oldMsg = message;
        message = newMessage;
        emit updatedMessages(oldMsg, newMessage);
    }
}