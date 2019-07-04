pragma solidity ^0.5.0;

import './base/Level.sol';
import './Locked.sol';

contract LockedFactory is Level {

  function createInstance(address) public payable returns (address) {
    Locked instance = new Locked();
    return address(instance);
  }

  function validateInstance(address payable _instance, address _player) public returns (bool) {
    _player; // suppress warnings
    Locked instance = Locked(_instance);
    return instance.unlocked() == true;
  }
}