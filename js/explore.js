/*
Reference string from the end to the 1st letter
As you reference the characters, append them to an
empty string
Print the string after reaching the end
*/

function reverse(string) {
  reverse_string = "";
  for(var i = string.length - 1; i >= 0; i--) {
    reverse_string += string[i];
  }

  return reverse_string;
}

string = "abcde"
if (1 == 1){
  console.log(reverse(string));
}
