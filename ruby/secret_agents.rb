=begin
Method 1: write encrypt method
Objective: advance each letter of a string one letter forward

Take string
get length

write a for-loop that traveres through the string, one character at a time
    If character is a space, leave it as a space.
    If not, advance it one letter forward in alphabetical order
Return encrypted string

=end

def encrypt(unencrypted_string)
  for character in (0...unencrypted_string.length)
    if unencrypted_string[character] == " "
      next
    elsif unencrypted_string[character] == "z"
      unencrypted_string[character] = "a"
    else
      unencrypted_string[character] = unencrypted_string[character].next!
    end
  end
  return unencrypted_string
end
# puts encrypt("acd z") # => "bde aa"
# puts encrypt("abc") # => "bcd"
# puts encrypt("zed") # => "afe"


=begin
Method 2: write decrypt method
Objective: advance each letter of a string one letter forward

take string and traverse it character by character
  for each character, get its index compared to the string
    "abcdefghijklmnopqrstuvwxyz"
      if it is a space, do nothing,
        and move on to the next character
      If it is not a space,
        find out what index the character is in "abcdefghijklmnopqrstuvwxyz"
          subtract 1 from the index
          change the character in return string based on comparing
          to this new index
=end
def decrypt(encrypted_string)
  check_string = "abcdefghijklmnopqrstuvwxyz"

  for character in (0...encrypted_string.length)
    if encrypted_string[character] == " "
      next
    else
      index_of_char = check_string.index(encrypted_string[character])
      encrypted_string[character] = check_string[index_of_char - 1]
    end
  end

  return encrypted_string
end


# puts decrypt('abc de') # => zab cd
# puts decrypt("bcd") # => "abc"
# puts decrypt("afe") # => "zed"

# nested method works because the word that is encrypted
# is then passed on to decrypt. Since we are not using
# the regular string.next method, both methods are based
# on the characters in  "abcdefghijklmnopqrstuvwxyz" and
# nothing else
puts decrypt(encrypt("swordfish")) # => "swordfish"