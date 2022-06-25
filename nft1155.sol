// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";

contract NFT1155 is ERC1155 {

    string BASE;
    constructor (string memory _BASE) public ERC1155(_BASE){


    }

    function mint (uint _token) 
    public 
    POAP(_token)
    {

        _mint( msg.sender, _token, 1, '');

    }
    modifier POAP (uint _token){
        require ( balanceOf(msg.sender, _token) <= 0, "tu ya tienes un POAP" );
        _;
    }

}
