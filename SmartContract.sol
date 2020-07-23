pragma solidity >=0.4.21 <0.6.0;

contract droneCom {

 string dataA;
 string dataB;
 string dataC;
 
 /// Access control list containing Ethereum account address of the members of the private network
 address constant public userA = 0x23D4f803f80D1c4472d61a027495b8f4533984fb;
 address constant public userB = 0xe811F3201b43258f63C71501785c77BB13FC2CdD;
 address constant public userC = 0x12467DFC061519eF25836aFB2BD935079138ba0F;
 
 
 /// set() function for Node 1 to store enrcypted IPFS hash on the Ethereum blockchain
 function ABset(string memory x) public {
   require(msg.sender == userA,"\n\nYou CANNOT use this function\n\n");
   dataA = x;
 }
 /// get() function for Node 1 to read encrypted IPFS hash stored on the Ethereum blockchain
 function ABget() public view returns (string memory) {
   require(msg.sender == userB,"\n\nYou CANNOT use this function\n\n");
   return dataA;
 }
 
 /// set() function for Node 2 to store enrcypted IPFS hash on the Ethereum blockchain
 function BCset() public {
   require(msg.sender == userB,"\n\nYou CANNOT use this function\n\n"); 
   dataB = dataA;
 }
 /// get() function for Node 2 to read encrypted IPFS hash stored on the Ethereum blockchain
 function BCget() public view returns (string memory) {
   require(msg.sender == userC,"\n\nYou CANNOT use this function\n\n");
   return dataB;
 }
 
 /// set() function for Node 3 to store enrcypted IPFS hash on the Ethereum blockchain
 function CAset() public {
   require(msg.sender == userC,"\n\nYou CANNOT use this function\n\n");
   dataC = dataB;
 }
 /// get() function for Node 3 to read encrypted IPFS hash stored on the Ethereum blockchain
 function CAget() public view returns (string memory) {
   require(msg.sender == userA,"\n\nYou CANNOT use this function\n\n");
   return dataC;
 }
}


