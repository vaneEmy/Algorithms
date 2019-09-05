
function range(start, end, step){
  let numbers = [];
  if(step == undefined)
    step = 1;
  for(let i = start; i <= end; i += step)
    numbers.push(i);
  return numbers;
}

function sum(arrayOfNumbers){
  let sumNumbers = 0;
  for(let x in arrayOfNumbers)
    sumNumbers += arrayOfNumbers[x];
  return sumNumbers;
}

console.log(sum(range(1,10)));

