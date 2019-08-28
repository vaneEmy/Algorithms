/*

Write a program that creates a string that represents an 8 x 8 grid,
 using newline characters to separate lines.
  At each position of the grid there is either a space or a "#" character.
The character should form a chess board.

 * */
var symbol = "", size = 4;

for(var x = 1; x <= size; x++){
  if(!(x % 2) == 0){
    for(var i = 1; i <= size; i++){
      if(!(i % 2)== 0)
        symbol += "#"
      if((i % 2)== 0)
        symbol += " ";
    }
    console.log(symbol);
    symbol = "";
  }
  if((x % 2) == 0){
     for(var i = 1; i <= size; i++){
      if(!(i % 2)== 0)
        symbol += " "
      if((i % 2)== 0)
        symbol += "#";
    }
    console.log(symbol);
    symbol = "";
  }
}
