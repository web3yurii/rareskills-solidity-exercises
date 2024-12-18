// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.13;

contract TicTacToe {
    /* 
        This exercise assumes you know how to manipulate nested array.
        1. This contract checks if TicTacToe board is winning or not.
        2. Write your code in `isWinning` function that returns true if a board is winning
           or false if not.
        3. Board contains 1's and 0's elements and it is also a 3x3 nested array.
    */

    function isWinning(uint8[3][3] memory board) public pure returns (bool) {
        // column 0
        if (isEqual(board[0][0], board[0][1], board[0][2])) return true;
        // column 1
        if (isEqual(board[1][0], board[1][1], board[1][2])) return true;
        // column 2
        if (isEqual(board[2][0], board[2][1], board[2][2])) return true;
        // row 0
        if (isEqual(board[0][0], board[1][0], board[2][0])) return true;
        // row 1
        if (isEqual(board[0][1], board[1][1], board[2][1])) return true;
        // row 2
        if (isEqual(board[0][2], board[1][2], board[2][2])) return true;
        // diagonal desc
        if (isEqual(board[0][0], board[1][1], board[2][2])) return true;
        // diagonal asc
        if (isEqual(board[0][2], board[1][1], board[2][0])) return true;
        // not winning
        return false;
    }

    function isEqual(uint256 x, uint256 y, uint256 z) private pure returns (bool) {
        return x == y && y == z;
    }
}
