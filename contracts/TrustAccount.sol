pragma solidity ^0.4.11;

import 'zeppelin-solidity/contracts/ownership/DelayedClaimable.sol';

contract TrustAccount is DelayedClaimable {

  address public owner;




  function TrustAccount(uint256 _startTime, uint256 _endTime, address recipient) public payable {

    owner = msg.sender;

    transferOwnership(recipient);
    setLimits(_startTime, _endTime);

    newTrust(this);
  }

  function withdrawFunds() onlyOwner{
    selfdestruct(owner);
  }

  event newTrust(address _contractAddress);

}
