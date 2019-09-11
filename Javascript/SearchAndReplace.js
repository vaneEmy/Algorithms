/**
 * Problem:
 * Perform a search and replace on the sentence using the arguments provided and return the new sentence.
 * First argument is the sentence to perform the search and replace on.
 * Second argument is the word that you will be replacing (before).
 * Third argument is what you will be replacing the second argument with (after).
 * Note
 * Preserve the case of the first character in the original word when you are replacing it. For example if you mean to replace the word "Book" with the word "dog", it should be replaced as "Dog"
 */

 /**
  * 
  * @param {*} str 
  * @param {*} before 
  * @param {*} after 
  */
function myReplace(str, before, after) {
    let position = str.search(before);
    let isLowerCase = str[position].match(/^[A-Z]/);
    let restAfterWord = after.slice(1) 
    let newAfterWord = isLowerCase === null ? after : after[0].toUpperCase().concat(restAfterWord); 
    if(position !== -1){
        return  str.replace(before, newAfterWord);
    }    
    return str;
  }
  
  //console.log(myReplace("A quick brown fox jumped over the lazy dog", "jumped", "leaped"));
  //console.log(myReplace("He is Sleeping on the couch", "Sleeping", "sitting"));
  //  console.log(myReplace("His name is Tom", "Tom", "john"));
  console.log(myReplace("Let us get back to more Coding", "Coding", "algorithms"));
