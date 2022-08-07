# Telephone
*Smart-Contract security and auditing* 

Problem statement:

*Gain the ownership of the contract.(Telephone.sol)


Solution:

This level focuses in on the difference between tx.origin and msg.sender, which sometimes get mixed up.
While this example may be simple, confusing tx.origin with msg.sender can lead to phishing-style attacks, such as this.


Create a new  contract importing the victims contract, TelphoneHack.sol in this case. Call the Hack function thats litrally that it! HACKED!!


An example of a possible attack is outlined below.

1.Use tx.origin to determine whose tokens to transfer, e.g.
function transfer(address _to, uint _value) {
  tokens[tx.origin] -= _value;
  tokens[_to] += _value;
}
2.Attacker gets victim to send funds to a malicious contract that calls the transfer function of the token contract, e.g.
function () payable {
  token.transfer(attackerAddress, 10000);
}
3.In this scenario, tx.origin will be the victim's address (while msg.sender will be the malicious contract's address), resulting in the funds being transferred from the victim to the attacker.

Final conculsion:

Never use tx.origin to verify ownership, because this could lead to some nasty attacks.

msg.sender >>>>>> tx.origin.
