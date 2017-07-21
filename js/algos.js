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
console.log(findLongest(arr));