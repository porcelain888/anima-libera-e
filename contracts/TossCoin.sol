// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract TossCoin {
    address private owner;

    event tossCoin(address indexed from, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    function transferToOwner() external payable {
        require(msg.value > 0, "Amount must be greater than 0");
        payable(owner).transfer(msg.value);
        emit tossCoin(msg.sender, msg.value);
    }
}
