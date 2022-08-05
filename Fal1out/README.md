AIM: To gain ownership of the contract.

Solution: Its pretty simple actually , the main problem with the given contract is the old-school way of creating a constructor.
Basically u can create a constructor using a function by:
-> Naming the function similar to contract,
-> Making it as the first function of the contract.



But this practice is outdated and now we just have new the keyword constructor.



However the problem is when they had a typo while naming the in constructor, which makes it a normal function and anyone and call that function and become the owner.



-------------------------Mission Accomplished---------------------------------------


That was silly wasn't it? Real world contracts must be much more secure than this and so must it be much harder to hack them right?

Well... Not quite.

The story of Rubixi is a very well known case in the Ethereum ecosystem. The company changed its name from 'Dynamic Pyramid' to 'Rubixi' but somehow they didn't rename the constructor method of its contract:

contract Rubixi {
  address private owner;
  function DynamicPyramid() { owner = msg.sender; }
  function collectAllFees() { owner.transfer(this.balance) }
  ...
This allowed the attacker to call the old constructor and claim ownership of the contract, and steal some funds. Yep. Big mistakes can be made in smartcontractland.


