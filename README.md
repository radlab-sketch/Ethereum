## Ethereum smart contract

The smart contract provided here was written using Solidity v0.6.0. The code was developed for three nodes in the network. The smart contract is deployed to the Ethereum network using the Truffle suite.

The smart contract can be deployed using any of the widely available open-source tools available such as MetaMask, Remix IDE, Geth, and Truffle. We have provided here instructions to deploy the contract using the Truffle tool suite.

Installation instructions for the Truffle suite can be found in https://www.trufflesuite.com/docs/truffle/getting-started/installation.

Step 1.

The address of the Ethereum accounts for each member of the private network should be stored in these three string variables, ```dataA```, ```dataB```, and ```dataC```. This makes up the access control list for the three members in the network.

Step 2.

Compile the contract using your preferred IDE. To compile the smart contract using Truffle suite use the following command

```truffle compile```

Step 3.

Create the migrations file. The migrations files contains the scripts to deploy the smart contract to the connected Ethereum network. The name of the migrations file should begin with a number greater than 1. This nomenclautre decides the order in which the contracts are deployed and also is used to record whether the migration ran successfully. 

The migrations script to deploy the given smart contract has also been provided and can be found in the migrations folder under the name **2_deploy_droneCom**. 

Step 4.

Deploy the smart contract using the following command

```truffle migrate --reset```





