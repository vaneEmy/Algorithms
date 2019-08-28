const globalTitle = "   Winter Is     Coming   ";

function urlSlug(title) {
  let newArr = title.trim().split(/[^A-Za-z]\s*/);
  let finalArr = newArr.join("-").toLowerCase();
  return finalArr;  
}
let winterComing = urlSlug(globalTitle);
console.log(winterComing);