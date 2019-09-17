/**
 * Convert the characters &, <, >, " (double quote), and ' (apostrophe), in a string to their corresponding HTML entities.
 */


function convertHTML(str) {
    return str.replace(/&|<|>|"|'/g, (char) => {
            if (char === '&'){
                return '&amp;';
            } else if (char === '>'){
                return '&gt;';
            } else if (char === '<'){
                return '&lt;';
            }else if(char === '"'){
                return '&quot;';
            }else{
                return '&apos;';
            }
        });
  }
  
 //console.log(convertHTML("Dolce & Gabbana"));
 console.log(convertHTML("Hamburgers < Pizza < Tacos"));
 //console.log(convertHTML("Schindler's List")); 
//console.log(convertHTML("abc"));