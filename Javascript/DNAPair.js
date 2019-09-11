/**
 * Take each character, get its pair, and return the results as a 2d array.
 * Return the provided character as the first element in each array.
 * For example, for the input GCG, return [["G", "C"], ["C","G"],["G", "C"]]
 */

/**
 * 
 * @param {*} str 
 */
function pairElement(str) {
  let dna = []; 
  let basePair = [];
  for(let i = 0; i < str.length; i ++){
    if(str[i] === 'C' || str[i] === 'G'){
        basePair.push(str[i]);
        str[i] === 'C' ? basePair.push('G') : basePair.push('C');  
    } 
    if(str[i] === 'T' || str[i] === 'A'){
        basePair.push(str[i]);
        str[i] === 'T' ? basePair.push('A') : basePair.push('T');  
    }
    dna.push(basePair);
    basePair = [];  
  }
  return dna;
}
  
  //console.log(pairElement("GCG"));
  console.log(pairElement("TTGAG"));
  //console.log(pairElement("CTCTA"));