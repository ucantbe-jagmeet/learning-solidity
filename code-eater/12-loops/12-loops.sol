// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10; //stating our version

/*
    ## loops
    -> for, while , do-while
*/


contract Array
{
    uint[3] public arr;
    uint public count;

    function loop() public {

        // while( count < arr.length){
        // arr[count] = count;
        // count++;
        //  }

        do{
            arr[count] = count;
            count++;
         } while( count < arr.length);

        // for( uint i=count; i < arr.length; i++){
        //     arr[count] = count;
        //     count++;
        //  }

    }
}