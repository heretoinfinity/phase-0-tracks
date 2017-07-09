=begin
1. write methods for the next vowel, next consonant
  where you compare with strings of just vowels or just
  consonants, 'aeiou' and 'bcdfghjklm...' - loop with the
  edge cases 'u' and 'z' to go to 'a' and 'b' respectively.
  It would be easier to compare with a string and less code
  than creating 'if-else' or 'case' statements for
  the vowels and consonants.

  in each array - need to split the characters, and get the
  next character

2.  take name string and split into first and last names,
put them in an array, lower cases of both, and swap
positions -> swap&lower()

3.take each name, split each character
and get the next letter, capitalize -> getNext()

3. capitalize the first letter for both arrays
join the 2 array elements and form a string
->capitalize&Join()

=end

def next_vowel(char)
  char = char.downcase
  compare = "aeiou"

  # not a vowel, i.e., no instance of the variable
  if compare.count(char) == 0
    print "Not a vowel"
    return nil
  end

  vowel_index = compare.index(char)

  if vowel_index == compare.length - 1 # end edge case
    return 'a'
  else
    return compare[vowel_index + 1]
  end
end

puts "---------------"
puts "Testing next_vowel"
puts "---------------"
puts next_vowel('A')
puts next_vowel('e')
puts next_vowel('U')
puts next_vowel('1')
puts next_vowel('B')

def next_consonant(char)
  char = char.downcase
  compare = "bcdfghjklmnpqrstvwxyz"

  # not a vowel, i.e., no instance of the variable
  if compare.count(char) == 0
    print "Not a consonant"
    return nil
  end

  consonant_index = compare.index(char)

  if consonant_index == compare.length - 1 # end edge case
    return 'b'
  else
    return compare[consonant_index + 1]
  end
end

puts "---------------"
puts "Testing next_consonant"
puts "---------------"
puts next_consonant('B') # => 'c'
puts next_consonant('e') # => 'Not a consonant'
puts next_consonant('z') # => 'b'
puts next_consonant('d') # => 'f'
puts next_consonant('1') # => 'Not a consonant'