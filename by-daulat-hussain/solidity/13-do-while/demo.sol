// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Demo {
    uint[] data;
    uint k =0;

    function loop() public returns (uint[] memory) {
        do{
            k++;
            data.push(k);
        }while(k<5);
        return data;
    }
}