function isEven(number){
  var even = false;
  if(number < 0){
     0;
  }
  if(number == 0){
    console.log("Es par");
    even  = true;
  }
  else if(number == 1){
    console.log("Es impar");
    even;
  }
  else{
    isEven(number - 2);
  }

}
isEven(75);
