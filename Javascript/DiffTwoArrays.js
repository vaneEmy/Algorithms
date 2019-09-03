/**
 * Compare two arrays and return a new array with any items only found in one of the two given arrays, but not both. 
 * In other words, return the symmetric difference of the two arrays
 */

function diffArray(arr1, arr2) {
    let newArr = [...arr1];
    let index;

    for(let i = 0; i < arr2.length; i++){
        if(newArr.includes(arr2[i]) === true){
            index = newArr.indexOf(arr2[i]);
            newArr.splice(index, 1);
        }else{
            index = newArr.indexOf(arr2[i]);
            newArr.push(arr2[i]);
        }
    }

    return newArr;
}
  
//let result = diffArray([1, 2, 3, 5], [1, 2, 3, 4, 5]);
//let result = diffArray(["andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"]);
//let result = diffArray([1, "calf", 3, "piglet"], [1, "calf", 3, 4]);
let result = diffArray([1, 2, 3, 4, 5, 6], [1, 2, 3, 5]);
console.log(result);