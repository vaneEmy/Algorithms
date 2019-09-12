/**
 * Write a function that takes two or more arrays and returns a new array of unique values in the order of the original provided arrays.
 * In other words, all values present from all arrays should be included in their original order, but with no duplicates in the final array.
 * The unique numbers should be sorted by their original order, but the final array should not be sorted in numerical order.
 */

/**
 * 
 * @param {*} arr 
 */
function uniteUnique(arr) {
  let args = [...arguments];
  let uniqueArr = args[0];
  
  for(let i = 1; i < args.length; i ++){
    for(let j = 0; j < args[i].length; j ++){
      if(uniqueArr.includes(args[i][j]) === false){
        uniqueArr.push(args[i][j]);
      }
    }
  }  
  return uniqueArr;
}
  
  console.log(uniteUnique([1, 3, 2], [5, 2, 1, 4], [2, 1]));
  //console.log(uniteUnique([1, 3, 2], [1, [5]], [2, [4]])); 
  //console.log(uniteUnique([1, 2, 3], [5, 2, 1, 4], [2, 1], [6, 7, 8]));
  //console.log(uniteUnique([1, 2, 3], [5, 2, 1]));