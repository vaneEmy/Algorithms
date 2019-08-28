var leaf = "", leafs = "", spaces = "";

for(var i = 1; i <= 10 ; i++){
  spaces = "";
  for(var j = 10; j > i; j--){
    spaces += " ";
  }
  leaf += "*"
  for(var x = 0; x < i; x++){
    leafs += "*";
  }
  console.log(spaces + leaf + leafs)
  leafs = ""
}
