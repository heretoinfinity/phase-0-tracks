def encrypt(unencrypted_string)
  # puts "Input: #{unencrypted_string}"
  for character in (0...unencrypted_string.length)
    # puts "index: #{character}"
    # puts "character: #{unencrypted_string[character]}"
    # puts "String before: #{unencrypted_string}"
    if unencrypted_string[character] == " "
      next
    elsif unencrypted_string[character] == "z"
      unencrypted_string[character] = "a"
    else
      unencrypted_string[character] = unencrypted_string[character].next!
      #puts "expected result: #{unencrypted_string[character].next!}"
    end
  end
  # puts "String after: #{unencrypted_string}"
  return unencrypted_string
end
# puts encrypt("acd z") # => "bde aa"
# puts encrypt("abc") # => "bcd"
# puts encrypt("zed") # => "afe"

def assert_equal(actual_value, expected_value, test_name)
  if actual_value == expected_value
    puts "PASSED: Actual and expected values equal: " \
    "\"#{expected_value}\""
  else
    puts "FAILED \"#{test_name}\": Expected " \
    "\"#{expected_value}\", but got \"#{actual_value}\""
  end
end

=begin

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

      # puts "index in main string #{index_of_char}"
      # puts "character: #{encrypted_string[character]}"
      # this solves case of 'a' as it will give -1, the last index
      encrypted_string[character] = check_string[index_of_char - 1]
    end
  end

  return encrypted_string
end

# puts decrypt('abc de') # => zab cd
# puts decrypt("bcd") # => "abc"
# puts decrypt("afe") # => "zed"
# assert_equal(encrypt("acd z"), "bde aa", "encrypt")
# assert_equal(encrypt("abc"), "bcd", "encrypt")
# assert_equal(encrypt("zed"), "afe", "encrypt")