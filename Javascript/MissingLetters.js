/**
 * Find the missing letter in the passed letter range and return it.
 * If all letters are present in the range, return undefined.
 */

function fearNotLetter(str) {
    let count = 0;
    let missingLetter = '';
    for(let i = str.charCodeAt(0); i < str.charCodeAt(str.length -1); i ++){
        str.charCodeAt(count) !== i ? missingLetter += String.fromCharCode(i) : count += 1;
    }
    
    return  missingLetter.length > 0 ? missingLetter : undefined; 
}
  
console.log(fearNotLetter("abceg"));
//console.log(fearNotLetter("abcdefghjklmno"));
//console.log(fearNotLetter("stvwx"));