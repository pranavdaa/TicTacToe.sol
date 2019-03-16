pragma solidity 0.4.19;

contract Tiktaktoe {
    uint8 public boardSize = 3;

    address[3][3] board;


    address public player1;
    address public player2;

    function TickTacToe() public {
        player1 = msg.sender;
    }
    
    function joinGame() public  {
        player2 = msg.sender;
    }



}