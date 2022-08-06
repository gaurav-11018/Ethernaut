#Coin-Flip

(The Myth Of Randomness)


For the peeps who are like "wth is he talking abt ?" 

This is the Problem Statement :

This is a coin flipping game where you need to build up your winning streak by guessing the outcome of a coin flip. To complete this level you'll need to use your psychic abilities to guess the correct outcome 10 times in a row.

Solution:
Firstly, we'll need to write some code containing the original contract structure in order to be able to initialize a new contract variable we can talk to.

NOTE:
There could be easier ways , this is just one of the ways that worked for me.

ATTACK CONTRACT: 
Call flip function 10 times!! And u have successfully completed the task

![Screenshot (445)](https://user-images.githubusercontent.com/79459872/183260823-7e2ff309-5546-4de4-a60e-a059d0463061.png)


Best way to avoid these kind of problems is to use ChainlinkVRF. Docs are very easy to follow ,


have a look:https://docs.chain.link/docs/intermediates-tutorial/





Lesson to be learnt:
True randomness is hard to achieve in native Solidity.
Therefore its more advisable to use the help of oracles like 
@chainlink
  
