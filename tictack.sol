pragma solidity 0.4.19;

contract Tiktaktoe {
    uint8 public boardSize = 3;

    address[3][3] board;

address activePlayer;
    address public player1;
    address public player2;

    function TickTacToe() public {
        player1 = msg.sender;
  
    }


    function joinGame() public  {

         assert(player2 == address(0)); //this is the way to initialise the address so that now no other address can be alloted to join the Game
        player2 = msg.sender;
        activePlayer = player2
    }

function getBoard(board) public view  returns(address[x][y]) {
return board;
}
function setStone(uint8 x,uint8 y) public {
   require(board[x][y] = address(0)); // so that at one box if we set a value we can not change the value in that box
    assert(x < boardSize)
    assert(y < boardSize)
     require(msg.sender = activePlayer)

    board[x][y] = msg.sender;
   //row win
   for(uint8 i = 0; i< boardSize ; i++ ){
     if(board[i][y] != activePlayer ) {
     break; 
     }
     if(i == boardSize - 1) {
         //winner
     }
   //win
   } 
   //colum-win
    for( i = 0; i< boardSize ; i++ ){
     if(board[x][i] != activePlayer ) {
     break; 
     }
     if(i == boardSize - 1) {
         //winner
     }
   //win
   } 
 //Diognal win
if(x == y) {
   //Diognal
     for(i = 0; i< boardSize ; i++ ){
     if(board[i][i] != activePlayer ) {
     break; 
     }
     if(i == boardSize - 1) {
         //winner
     }
   //win
   } 
   

}
//Anti-Diognal
if(x+y = boardSize-1){
       for(i = 0; i< boardSize ; i++ ){
     if(board[i][(boardSize-1)-i] != activePlayer ) {
     break; 
     }
     if(i == boardSize - 1) {
         //winner
     }
   //win
   } 
}
 

    if(activePlayer = 1) {
        activePlayer = player2
    }
    else{
        activePlayer = player1
    }
}

}