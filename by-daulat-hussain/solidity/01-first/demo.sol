// SPDX-License-Identifier: MIT
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Demo{
    // string public hey="Hey Jagmeet";
    string public hey;
    uint256 public no = 10;

    function addInfo(string memory  _hey, uint _no) public {
        hey= _hey;
        no= _no;
    }
}