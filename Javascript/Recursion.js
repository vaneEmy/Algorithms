
/**
 * Print if the number is even or odd.
 * Using recursion 
 * @param {*} number 
 */
function isEven(number){
  if(number < 0){
    return 0;
  }
  if(number === 0){
    console.log("Is Even");
  }
  else if(number === 1){
    console.log("Is odd");
  }
  else{
    isEven(number - 2);
  }
}

isEven(-1);
