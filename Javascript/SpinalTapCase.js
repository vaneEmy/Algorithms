
/**
 * Convert a string to spinal case. Spinal case is all-lowercase-words-joined-by-dashes.
 */

 /**
  * 
  * @param {*} str 
  */
function spinalCase(str) {
    let newStr = str.split(/(?=[A-Z][a-z+])|\s|-|_/);
    let spinalCase = newStr.join('-')
    return spinalCase.toLowerCase();
}
  
  //spinalCase('This Is Spinal Tap');
  //spinalCase("thisIsSpinalTap"); 
  console.log(spinalCase("AllTheSmallThings"));