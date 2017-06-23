def encrypt(unencrypted_string)
  for character in (0...unencrypted_string.length)
    #puts "index: #{character}"
    #puts "character: #{unencrypted_string[character]}"
    if unencrypted_string[character] == " "
      next
    else
      unencrypted_string[character] = unencrypted_string[character].next!
      #puts "expected result: #{unencrypted_string[character].next!}"
    end
  end
  return unencrypted_string
end
# puts encrypt("acd z") # => "bde aa"
