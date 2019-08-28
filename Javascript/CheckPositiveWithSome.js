function checkPositive(arr) {
    let result = arr.some(num =>{
        return num > 0;
    });
    return result === true ? true : false;
}
console.log(checkPositive([1, 2, 3, 4, 5]));