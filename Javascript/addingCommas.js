/**
 * Giving a string, it should return the number with commas
 * @param {*} number 
 */
function addingCommas(number){
    let newArr = number.split('');

    for(let i = number.length - 3; i > 0; i-=3){
        newArr.splice(i, 0, ",");
    }
    return newArr.join('');
}

console.log(addingCommas("100000"));

