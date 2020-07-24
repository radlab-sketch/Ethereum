var drone = artifacts.require("droneCom");

module.exports = function(deployer) {
  deployer.deploy(drone, {overwrite: false});
};
