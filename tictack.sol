pragma solidity 0.4.19;

contract Tiktaktoe {
    uint8 public boardSize = 3;

    address[3][3] board;

address activePlayer;
    address public player1;
    address public player2;

    function TickTacToe() public {
        player1 = msg.sender;
    activePlayer = player2
    }
    
    function joinGame() public  {

         assert(player2 == address(0)); //this is the way to initialise the address so that now no other address can be alloted to join the Game
        player2 = msg.sender;
        activePlayer = player2
    }

function setStone(uint8 x,uint8 y) public {
   require(board[x][y] = address(0)); // so that at one box if we set a value we can not change the value in that box
    assert(x < boardSize)
    assert(y < boardSize)
     require(msg.sender = activePlayer)

    board[x][y] = msg.sender;
    if(activePlayer = 1) {
        activePlayer = player2
    }
    else{
        activePlayer = player1
    }
}

}