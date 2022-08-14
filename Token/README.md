# Token

*Smart-Contract security and auditing* 

Challenge 5 : Token !!!


first off let me explain The goal of this level is for you to hack the basic token contract token.sol.

You are given 20 tokens to start with and you will beat the level if you somehow manage to get your hands on any additional tokens. Preferably a very large amount of tokens.

HINT:

What is an odometer?


WHAT YOU SHOULD KNOW BEFORE WRITING YOUR SOLIDITY CONTRACT:

Overflows are very common in solidity and must be checked for with control statements such as:

if(a + c > a) {
  a = a + c;
}
An easier alternative is to use OpenZeppelin's SafeMath library that automatically checks for overflows in all the mathematical operators. The resulting code looks like this:

a = a.add(c);
If there is an overflow, the code will revert.


SOLUTION:


All we need to do is:

transfer 21 (more than 20) tokens to another address,
this will cause an underflow, setting our balance to 255.

Thats all!!! 


How to prevent underflow and overflow in Solidity?
 
-> Latest version of solidity has got u covered, always 
     advisable to use 0.8 version or higher. 


-> If u are using older version use *safemath* function 
     it will take care of this issue.
     
     
-----------------------------------------------------------------done----------------------------------------------------------------------------------------
