var TrustAccount = artifacts.require("./TrustAccount.sol");


module.exports = function(deployer) {
  deployer.deploy(TrustAccount);
};
