pragma solidity 0.4.19;

contract Tiktaktoe {
    uint8 public boardSize = 3;
    uint8 movesCounter;
bool gameActive
    address[3][3] board;

address activePlayer;

event PlayerJoin(address player);
event NextPlayer(address player);
event GameOverWitnWin(address winner);
event GameOverWithDraw();
    address public player1;
    address public player2;

    function TickTacToe() public {
        player1 = msg.sender;
  
    }


    function joinGame() public  {


         assert(player2 == address(0)); //this is the way to initialise the address so that now no other address can be alloted to join the Game
        gameActive true;
        player2 = msg.sender;
        PlayerJoin(player2);
        //to add randomisation as to who starts first p1 or 2
        if(block.number % 2 == 0){
            activePlayer = player2
        }
        else 
        {
            activePlayer = player2
}   
NextPlayer(activePlayer)
 }

function getBoard(board) public view  returns(address[x][y]) {
return board;
}
function setWinner(address player) private {
    gameActive = false
    event GameOverWitnWin(player);

    //emit an event
    //transfer money to the winner
}
function setDraw() private {
    gasActive = false
    GameOverWithDraw();
}

function setStone(uint8 x,uint8 y) public {
   require(board[x][y] = address(0)); // so that at one box if we set a value we can not change the value in that box
   assert(gameActive);
   assert(x < boardSize)
    assert(y < boardSize)
     require(msg.sender = activePlayer)

    board[x][y] = msg.sender;
    movesCounter++;
   //row win
   for(uint8 i = 0; i< boardSize ; i++ ){
     if(board[i][y] != activePlayer ) {
     break; 
     }
     if(i == boardSize - 1) {
         //winner
     setWinner(activePlayer)
     return;
     }
   //win
   } 
   //colum-win
    for( i = 0; i< boardSize ; i++ ){
     if(board[x][i] != activePlayer ) {
     break; 
     }
     if(i == boardSize - 1) {
              setWinner(activePlayer)//winner
     return ;
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
             setWinner(activePlayer) //winner
   return ;
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
            setWinner(activePlayer)  //winner
  return ;
     }
   //win
   } 
}
 
 //Draw
if(movesCounter == (boardSize**2)) {
   setDraw() // draw
   return;

}

    if(activePlayer = 1) {
        activePlayer = player2
    }
    else{
        activePlayer = player1
    }
}

}