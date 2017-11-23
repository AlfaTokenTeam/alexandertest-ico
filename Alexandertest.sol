pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Alexandertest is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Alexandertest(address _owner)  UpgradeableToken(_owner) {
    name = "Alexandertest";
    symbol = "ATST";
    totalSupply = 500000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}