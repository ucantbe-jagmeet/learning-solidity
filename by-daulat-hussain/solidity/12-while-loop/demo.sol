// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract demo {
    uint[] data;
    uint k =0;

    function loop() public returns (uint[] memory) {
        while(k<5){
            k++;
            data.push(k);
        }
    }
}