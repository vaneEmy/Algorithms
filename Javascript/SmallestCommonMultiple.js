/**
 * Find the smallest common multiple of the provided parameters that can be evenly divided by both, 
 * as well as by all sequential numbers in the range between these parameters.
 * The range will be an array of two numbers that will not necessarily be in numerical order.
 * For example, if given 1 and 3, find the smallest common multiple of both 1 and 3 that is also evenly divisible by all numbers between 1 and 3. The answer here would be 6.
 */

 /**
  * 
  * @param {*} arr 
  */
function smallestCommons(arr) {
    let smallNumber =  arr[0] < arr[1] ? arr[0] : arr[1];
    let bigNumber = arr[0] > arr[1] ? arr[0] : arr[1];
    let numbers = [];
    let commonMultiple = [];
    
    for(let i = smallNumber; i <= bigNumber; i++){
      numbers.push(i);
    }
    
    for(let div = 2; div <= bigNumber; div++){
      let isDiv = 0;
      for(let num = 0; num < numbers.length; num++){
        let totalDIv = 0;
        while(numbers[num] % div === 0){
          numbers[num] = numbers[num] / div;
          totalDIv += 1;
          if (totalDIv > isDiv){
            isDiv = totalDIv;
          }
        } 
      }
      while(isDiv > 0){
        commonMultiple.push(div);
        isDiv -= 1;
      }
    }
    
    return commonMultiple.reduce((total, num) =>  total *= num);
  }
    
  //console.log(smallestCommons([1,5]));
  console.log(smallestCommons([2, 10])) //should return 2520.