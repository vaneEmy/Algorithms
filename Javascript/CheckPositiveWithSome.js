/**
 *  Return true if numbers are positive otherwise, return false 
 *  Using some 
 * @param {*} arr 
 */
function checkPositive(arr) {
    let result = arr.some(num =>{
        return num > 0;
    });
    return result === true ? true : false;
}
console.log(checkPositive([1, 2, 3, 4, 5]));