pragma solidity ^0.4.11;

import 'zeppelin-solidity/contracts/ownership/DelayedClaimable.sol';

contract TrustAccount is DelayedClaimable {

  address public owner;

  /*could have mapping of all trust accounts, or create a new contract for each account. Seems like each should be own contract.*/

/*Data needed:
1. Owner address - could be creator or designated to other address
2. Amount to enter into TrustAccount
3. Date funds will become available
*/

/*Functions and modifiers needed:
1.Owner/onlyOwner - OpenZeppelin
2.Pull funds or send funds - OpenZeppelin
  - can a contract execute send based on date?
  - should have onlyAfter modifier, allows user to withdraw funds only after a set date. Shouldn't auto send.
3.Create TrustAccount - contructor function*/

/*Functionality*/

/*Ownable makes msg.sender owner of the trust */


  function TrustAccount(uint256 _startTime, uint256 _endTime, address recipient, uint256 trustValue) public payable {
    
    onwer = msg.sender;

    /*setLimits and transferOwnership are onlyOwner functions, Owner may not be set when constructor is called */
    transferOwnership(recipient);
    setLimits(_startTime, _endTime);

  }



}
