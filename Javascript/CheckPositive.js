/**
 * Return true if numbers are positive otherwise, return false
 * Using every 
 * @param {*} arr 
 */
function checkPositive(arr) {
    let result = arr.every(num =>{
        return num > 0;
    });
    return result === true ? true : false;
}
console.log(checkPositive([1, 2, 3, 4, 5]));