/**
 * It'll pass you an array of two numbers. 
 * Return the sum of those two numbers plus the sum of all the numbers between them.
 * The lowest number will not always come first.
 * 
 */

 /**
  * Return the sum of the array of two numbers plus the sum of all the numbers between them. 
  * @param {*} arr 
  */
function sumAll(arr) {
    let sum = 0;
    let max = arr[1] > arr[0] ? arr[1] : arr[0];
    let min = arr[1] < arr[0] ? arr[1] : arr[0];
    
    for(let i = min; i <= max; i++){
      sum += i;
    }
    
    return sum;
  }
  
  sumAll([1, 4]);
  sumAll([4, 1]);
  sumAll([5, 10]);
  sumAll([10, 5]);