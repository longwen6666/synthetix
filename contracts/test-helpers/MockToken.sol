pragma solidity ^0.5.16;

import "../lib/ERC20.sol";
import "../lib/ERC20Detailed.sol";

contract MockToken is ERC20, ERC20Detailed {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals
    ) public ERC20Detailed(name, symbol, decimals) {
        _mint(msg.sender, 1000000 * (10**uint256(decimals)));
    }
}
