# king

*Smart-Contract security and auditing* 


Completed Ethernaut Challenge 9 :King!!!


# WHAT YOU SHOULD KNOW BEFORE WRITING YOUR SOLIDITY CONTRACT:

The contract represents a  simple game: whoever sends it an amount of ether that is larger than the current prize becomes the new king. On such an event, the overthrown king gets paid the new prize, making a bit of ether in the process

Such a fun game. Your goal is to break it!!
[king](https://user-images.githubusercontent.com/79459872/187062594-b3b9fa40-1fae-4b6f-bcb0-51f9f1fbb204.png)


NOTE: When you submit the instance back to the level, the level is going to reclaim kingship. You will beat the level if you can avoid such a self proclamation.

# SOLUTION:
=> Create a attack contract from which u can sent eth
=> Send 1 eth!
=> have a malicious fallback function and also include a taunting message.
=> Submit your King.sol contract instance back to the level and wait for the transaction to fail!

ATTACK CONTRACT:
![carbon](https://user-images.githubusercontent.com/79459872/187062620-329fe7ba-739e-4343-8268-9fdbf5ec1583.png)

# Key Security Takeaways:

=> Never assume transactions to external contracts will be successful
=> Make sure to handle failed transactions on the client side in the event you do depend on transaction success to execute other core logic
