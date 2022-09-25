# Privacy

*Smart-Contract security and auditing* 

# The problem statement

The creator of this contract was careful enough to protect the sensitive areas of its storage.

Unlock this below contract to beat the level.

Things that might help:

-> Understanding how storage works Understanding how parameter parsing works Understanding how casting works.

# Privacy contract: Unlock this below contract to beat the level.
![privacy](https://user-images.githubusercontent.com/79459872/192141541-75eb9895-54a0-4926-822d-d729a5905f34.png)

# SOLUTION:
To solve this contract, we must look into how solidity allocates slots to store contract's variable. 
Well in this case it is like this:
![explain](https://user-images.githubusercontent.com/79459872/192141589-845e9e66-c687-4741-ae48-56816fb42de0.png)

Since we know the SECRET lies in 5th slot, let use the Almighty etherjs command:

await web3.eth.getStorageAt(contract.address,5,console.log)
 
And Boom!! you have got everything you want to hack this contract.

# ATTACK CONTRACT: put the value that you got from getStorageAt to unlock function after deploying this attack contract.
![attack](https://user-images.githubusercontent.com/79459872/192141630-eecd5c72-11cc-491d-a006-38bc9bc409f9.png)

# Key Takeaways:
->All storage is publicly visible on the blockchain, even your private variables!

->Never store passwords and private keys without hashing them first.
![last](https://user-images.githubusercontent.com/79459872/192141826-ce5cd7ed-b95d-4d30-aa74-fe3c327472d5.png)



# Congragulations
![success](https://user-images.githubusercontent.com/79459872/192141774-eee6053e-5bf4-400a-8a33-a2de4b613adc.png)


