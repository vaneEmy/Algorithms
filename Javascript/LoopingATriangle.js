/*Write a program which has the following output
 #
 ##
 ###
 ####
 #####
 ######
 #######

 **/
var symbol = ""
for(var i = 0; i <= 7; i++){
  for(var j = 0; j < i; j++){
    symbol += "#";
  }
  console.log(symbol);
  symbol = "";
}
