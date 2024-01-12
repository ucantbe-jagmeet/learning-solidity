// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FalbackExample {
    uint public result;

    receive() external payable {
        result = 1;
     }

     fallback() external payable {
        result = 2;
      }
}


// Explainer from: https://solidity-by-example.org/fallback/
// Ether is sent to contract
//      is msg.data empty?
//          /          \
//         yes          no
//         /             \
//    receive() data?    fallback()
//     /   \
//   yes   no
//  /        \
//receive()  fallback()