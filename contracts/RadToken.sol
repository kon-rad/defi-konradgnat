//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@opoenzeppelin/contracts/access/Ownable.sol";

contract RadToken is ERC20Capped, Ownable {

    constructor(uint256 cap) ERC20("RadToken", "RDT") ERC20Capped(cap) {}

    function issueToken(address reciever, uint256 amount) public onlyOwner {
        _mint(reciever, amount);
    }
}
