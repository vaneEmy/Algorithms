/**
 *  Translate the provided string to pig latin
*   Pig Latin takes the first consonant (or consonant cluster) of an English word, moves it to the end of the word and suffixes an "ay".
*
*   If a word begins with a vowel you just add "way" to the end.
*/


/**
 * 
 * @param {*} str 
 */
function translatePigLatin(str) {
    let startsVowel = str.match(/^[a|e|i|o|u]/i);
    let pigLating; 
    if(startsVowel === null){
        pigLating = str.replace(/(\w+?)([aeiou]\w+)/i, '$2$1').concat("ay");
    }else{
        pigLating = str.concat("way");
    }
    return pigLating;
}
  
console.log(translatePigLatin("consonant"));
 // translatePigLatin("california");
  //console.log(translatePigLatin("algorithm"));
  //translatePigLatin("glove");