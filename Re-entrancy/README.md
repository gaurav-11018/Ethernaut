# RE-ENTRACNY


# The goal of this level is for you to steal all the funds from the contract.

Things that might help:

*Untrusted contracts can execute code where you least expect it.
Fallback methods

*Throw/revert bubbling

*Sometimes the best way to attack a contract is with another contract.

# Solution

Firstly what is Reentracy attack??

A reentrancy attack occurs when a function makes an external call to another untrusted contract. Then the untrusted contract makes a recursive call back to the original function in an attempt to drain funds.

Problem with the reentrancy contract:
=> The contract uses the Solidity version < 8.0 and this mean that every math operation could suffer from underflow/overflow attacks.
=>  The contract does not follow the Checks-Effects-Interactions Pattern. THIS IS THE REASON WE CAN RE-ENTER

ATTACK CONTRACT: 

contract that exploits the above vulnerability.

Pay attention to donateandwithdraw function which calls donate and withdraw in quick succession.
![attack](https://user-images.githubusercontent.com/79459872/189674050-553db8ad-e59e-4409-8774-d079ef7f7ee0.png)

# So how do we prevent reentrancy attacks?

1. Checks-Effects-Interaction (CEI pattern)

Checks-Effects-Interaction in contracts to ensure we check for conditions that must be met, effect update to states and then interact with any external calls.

2. Solutions such as ReentrancyGuard or PullPayment can also be used.

3. Transfer and send are no longer recommended solutions as they can potentially break contracts after the Istanbul hard fork .


NOTE: 
Always assume that the receiver of the funds you are sending can be another contract, not just a regular address. Hence, it can execute code in its payable fallback method and re-enter your contract, possibly messing up your state/logic.

# Re-entrancy is a common attack. You should always be prepared for it!
