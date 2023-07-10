// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

contract A{
    function f1() public pure returns (uint){
        return 1;
    }
    function f2() private pure returns (uint){
        return 2;
    }
    function f3() internal pure returns (uint){
        // uint x = f1(); // external function cant be used within contract
        return 3;
    }
    function f4() external pure returns (uint){
        return 4;
    }
    
}

contract B is A{
    // uint public bx = f2(); // private function cant be derived to another contract
    // uint public bx = f3();
    // uint public bx = f4(); // jab B ne A ko inherit kiya toh f4 bhi uske pass aa gya 
        // so hum ab usko within call kr rhe hai isliye voh firse call nhi hoga
} 

contract C {
    A obj = new A();
    // uint public cx = obj.f1();
    // uint public cx = obj.f2();
    // uint public cx = obj.f3();
    uint public cx = obj.f4();
}