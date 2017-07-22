/*
Iterate through each element in the array from start to finish
  Get the length of the first string and save it
  Continue with the next elements in the array and get their
  lengths comparing them with the length of the string right
  before it and retaining the longest length
Return the longest length after getting to the end of the array
*/

function findLongest(arr){
  var longest = 0;
  for (var i = 0; i < arr.length; i++) {
    if (arr[i].length > longest){
      longest = arr[i].length;
    }
  }
  return longest;
}

// DRIVER CODE
arr = ['one', 'four', 'fifty', 'thirteen'];
console.log('longest word', findLongest(arr));


/*
Start with the 1st key-value pair of the 1st object
and compare the pair with all the other pairs in the
2nd object.
Proceed with doing the same comparison with the next
pair in the 1st object up until the end
*/

function compareObjects(obj1, obj2) {

}

/*
Take number of arguments
  for each argument
    generate a random length of the letters
      select a letter in each iteration from a list of letters
    add them to list
return the list
*/

function generateRandomWords(words) {
  list = [];
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  for (var i = 0; i < words; i++) {
    word_length = 1 + Math.round(9 * Math.random());
    word = ""
    for (var j = 0; j < word_length; j++) {
      word += alphabet[Math.round(25*Math.random())];
    }

    list.push(word);
  }
  return list;
}

// alphabet = "abcdefghijklmnopqrstuvwxyz"
// x = Math.round(25*Math.random());
// console.log(x);
// console.log(alphabet[x]);
console.log(generateRandomWords(3));
