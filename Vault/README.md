# Vault

Smart-Contract security and auditing


Completed Ethernaut Challenge 8 :Vault!!!
 

# WHAT YOU SHOULD KNOW BEFORE WRITING YOUR SOLIDITY CONTRACT:

Lets understand the challenge:
 
AIM: Unlock the vault to pass the level!

Could u see vulnerability in the above contract??

Its the innocent mistake of thinking that making your state variable private actually keeps it private in the blockchain.

IT DOESN'T!!!!!!!!!!!!!!!!!!!

Solution:
We can simply use our console and hack this vault.

COMMAND:

await web3.eth.getStorageAt("put the vault address",1)

Thats all!!! It will show the password of the vault.
Use it and unlock the vault to finish this challenge.

LEARNINGS:

-> It's important to remember that marking a variable as private only prevents other contracts from accessing it. State variables marked as private and local variables are still publicly accessible.

-> To ensure that data is private, it needs to be encrypted before being put onto the blockchain. In this scenario, the decryption key should never be sent on-chain, as it will then be visible to anyone who looks for it.
zk-SNARKs provides a way to determine whether someone possesses a secret parameter, without ever having to reveal the parameter.


That's all keep learning!!!!🎈
