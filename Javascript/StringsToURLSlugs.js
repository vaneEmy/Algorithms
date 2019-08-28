const globalTitle = "Winter Is Coming";

function urlSlug(title) {
  let newArr = title.split(/[^A-Za-z]/);
  let finalArr = newArr.join("-").toLowerCase();
  return finalArr;  
}
let winterComing = urlSlug(globalTitle);
console.log(winterComing);