/**
 * Drawing a Christmas tree
 * @param {*} size 
 */

function drawAChristmasTree(size){
  let leaf = "", leafs = "", spaces = "";

  for(let i = 1; i <= size ; i++){
    spaces = "";
    
    for(let j = size; j > i; j--){
      spaces += " ";
    }

    leaf += "*"
    
    for(let x = 0; x < i; x++){
      leafs += "*";
    }

    console.log(spaces + leaf + leafs)
    leafs = ""
  }
}

drawAChristmasTree(10);