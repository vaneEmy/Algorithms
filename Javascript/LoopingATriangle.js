/*
  Write a program which has the following output
 #
 ##
 ###
 ####
 #####
 ######
 #######

 **/

 function drawATriangle(size){
  let symbol = ""
  
  for(let i = 0; i <= size; i++){
    for(let j = 0; j < i; j++){
      symbol += "#";
    }

    console.log(symbol);
    symbol = "";
  }
}

drawATriangle(10);

