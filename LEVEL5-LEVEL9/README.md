# Summary


For the all peeps who missed out my super dope threads abt Ethernaut challenges, don't worry guys I  have got a one line lesson summaries just for you guys.

FIVE LESSONS I LEARNT TO NOT GET HACKED:


# LEVEL-5 TOKEN:
Prevent underflow and overflow  by using 0.8 version or higher!


# LEVEL-6 DELEGATION: 
Delegates have complete access to your contract's state. The delegatecall function  must be used with extreme care.


# LEVEL-7 FORCE: 
Don't to count on the invariant address(this).balance == 0 for any contract logic.


# LEVEL-8 VAULT:
State variables marked as private are still publicly accessible!!!! To ensure that data is private, it needs to be encrypted before being put onto the blockchain.


# LEVEL-9 KING:
Never assume transactions to external contracts will be successful, 
Make sure failed transactions on the client side in the event depend on transaction success to execute other core logic
