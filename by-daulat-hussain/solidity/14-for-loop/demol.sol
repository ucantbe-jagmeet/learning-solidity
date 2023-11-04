// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo {
    uint[] data;

    function loop() public returns(uint[] memory) {
        for(uint i=0; i<5; i++){
            data.push(i);
        }
        return data;
    }
}