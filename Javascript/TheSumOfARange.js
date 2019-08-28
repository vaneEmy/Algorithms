
function range(start, end, step){
  var numbers = [];
  if(step == undefined)
    step = 1;
  for(var i = start; i <= end; i += step)
    numbers.push(i);
  return numbers;
}

function sum(arrayOfNumbers){
  var sumNumbers = 0;
  for(var x in arrayOfNumbers)
    sumNumbers += arrayOfNumbers[x];
  return sumNumbers;
}

console.log(sum(range(1,10)));

