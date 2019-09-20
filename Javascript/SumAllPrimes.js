function sumPrimes(num) {
    let numbers = [];
    let currentNum = 2;
    let primeNumbers = [];
    
    for(let i = 1; i <= num; i++){
        numbers.push(i);
    }
    let maxNum = numbers.length;
    
    while(currentNum < maxNum){
        primeNumbers = getPrimeNumbers(currentNum, numbers);
        numbers = [...primeNumbers];
	    maxNum = primeNumbers.length;
	    currentNum += 1
    }

   return  primeNumbers.reduce((total, num) => total += num, 0)
}
  
function getPrimeNumbers(currentNum, numbers){
    return numbers.filter(num => ((num === currentNum || num % currentNum !== 0) && num !== 1)).map(num => num);
}

console.log(sumPrimes(10));
console.log(sumPrimes(977)); //should return 73156.
