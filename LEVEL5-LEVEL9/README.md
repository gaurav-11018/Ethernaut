


LEVEL-5: Prevent underflow and overflow  by using 0.8 version or higher!
LEVEL-6:Delegates have complete access to your contract's state. The delegatecall function  must be used with extreme care.
LEVEL-7: Don't to count on the invariant address(this).balance == 0 for any contract logic.
LEVEL-8: State variables marked as private are still publicly accessible!!!! To ensure that data is private, it needs to be encrypted before being put onto the blockchain.
LEVEL-9:Never assume transactions to external contracts will be successful, 
Make sure failed transactions on the client side in the event depend on transaction success to execute other core logic
