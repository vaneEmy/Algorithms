/**
 * 
 * Return the object that match the second parameter
 * @param {*} collection 
 * @param {*} source 
 */
function whatIsInAName(collection, source) {
    let arr = [];
    const sourceKeys = Object.keys(source)

    for (let obj of collection) {
        let mustAdd = true
        const objKeys = Object.keys(obj)
        for (let sourceKey of sourceKeys) {
            if (!objKeys.includes(sourceKey) || source[sourceKey] !== obj[sourceKey]) {
                mustAdd = false
                break
            }
        }
        if (mustAdd) {
            arr.push(obj)
        }
    }
    console.log(arr)
    return arr;
  }
  
  whatIsInAName([{ first: "Romeo", last: "Montague" }, { first: "Mercutio", last: null }, { first: "Tybalt", last: "Capulet" }], { last: "Capulet" });
  //whatIsInAName([{ "apple": 1, "bat": 2 }, { "apple": 1 }, { "apple": 1, "bat": 2, "cookie": 2 }], { "apple": 1, "cookie": 2 });