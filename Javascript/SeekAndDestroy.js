/**
 * Problem: 
 * You will be provided with an initial array (the first argument in the destroyer function), followed by one or more arguments. 
 * Remove all elements from the initial array that are of the same value as these arguments.
 */

function destroyer(arr) {
    let args = [...arguments];
    let firstArr = args[0];
    let newArr = [...firstArr];
    let index;
    args.shift();
    

    for(let i = 0; i < firstArr.length; i++){
        if(args.includes(firstArr[i]) === true){
            index = newArr.indexOf(firstArr[i]);
            newArr.splice(index, 1);
        }
    }
    
    return newArr;
  }
  
  //destroyer([1, 2, 3, 1, 2, 3], 2, 3);
  //destroyer(["tree", "hamburger", 53], "tree", 53)
  //destroyer([2, 3, 2, 3], 2, 3)
  destroyer(["possum", "trollo", 12, "safari", "hotdog", 92, 65, "grandma", "bugati", "trojan", "yacht"], "yacht", "possum", "trollo", "safari", "hotdog", "grandma", "bugati", "trojan")