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

def test_func(actual_value, expected_value, test_name)
  if actual_value == expected_value
    puts "PASSED: Actual and expected values equal: " \
    "\"#{expected_value}\""
  else
    puts "FAILED \"#{test_name}\": Expected " \
    "\"#{expected_value}\", but got \"#{actual_value}\""
  end
end

# test_func(encrypt("acd z"), "bde aa", "encrypt")
# test_func(encrypt("abc"), "bcd", "encrypt")
# test_func(encrypt("zed"), "afe", "encrypt")