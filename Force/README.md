# Force

"WIERDEST CONTRACT I HAVE EVER SEEN!!:"

Smart-Contract security and auditing* 


Completed Ethernaut Challenge 7 : FORCE !!!
 

WHAT YOU SHOULD KNOW BEFORE WRITING YOUR SOLIDITY CONTRACT:

The goal of this level is to make the balance of the contract greater than zero.

Things that might help:

-> Fallback methods

-> Sometimes the best way to attack a contract is with another contract.

-> See the Help page above, section "Beyond the console".

Okay my first thoughts seeing this contract was 
wtf?)  Well if u had that feeling as well don't worry, I'll explain solution:

We need to Force-feed the  Smart Contract.
There are three ways of doing this:
1.Self-destruct
2.Coinbase Transactions
3.Pre-calculated addresses

So we basically, Forcefully send some Ether. The easiest way is by making use of a selfdestruct() function.

What is Self Destruct?
Contracts can be deleted from the blockchain by calling selfdestruct, sends all remaining Ether stored in the contract to a designated address.

ATTACK CONTRACT: check Attack.sol
Just add the contract address, and then call the attack function!!!

Learnings:
In solidity, for a contract to be able to receive ether, the fallback function must be marked payable.
However, there is no way to stop an attacker from sending ether to a contract by self destroying.
Hence, it is important not to count on the invariant address(this).balance == 0 for any contract logic.

Thats all!!! Keep learning🎈
