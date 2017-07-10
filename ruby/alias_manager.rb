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
put them in an array, and swap
positions -> swap_names(str) => array

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
    # puts "Not a vowel"
    return nil
  end

  vowel_index = compare.index(char)

  if vowel_index == compare.length - 1 # end edge case
    return 'a'
  else
    return compare[vowel_index + 1]
  end
end

# puts "---------------"
# puts "Testing next_vowel"
# puts "---------------"
# puts next_vowel('A')
# puts next_vowel('e')
# puts next_vowel('U')
# puts next_vowel('1')
# puts next_vowel('B')

def next_consonant(char)
  char = char.downcase
  compare = "bcdfghjklmnpqrstvwxyz"

  # not a consonant, i.e., no instance of the variable
  if compare.count(char) == 0
    # puts "Not a consonant"
    return nil
  end

  consonant_index = compare.index(char)

  if consonant_index == compare.length - 1 # end edge case
    return 'b'
  else
    return compare[consonant_index + 1]
  end
end

# puts "---------------"
# puts "Testing next_consonant"
# puts "---------------"
# puts next_consonant('B') # => 'c'
# puts next_consonant('e') # => 'Not a consonant'
# puts next_consonant('z') # => 'b'
# puts next_consonant('d') # => 'f'
# puts next_consonant('1') # => 'Not a consonant'

def next_letter(char)
  # checking consonant first since more common
  if next_consonant(char) == nil
    if next_vowel(char) == nil
      # puts "Character neither consonant nor vowel"
      return nil
    end
  else
    return next_consonant(char)
  end

  return next_vowel(char)
end

# puts "---------------"
# puts "Testing next_letter"
# puts "---------------"
# puts next_letter('A') # => 'e'
# puts next_letter('Z') # => 'b'
# puts next_letter('U') # => 'a'
# puts next_letter('1') # => nil
# puts next_letter('#') # => nil

def swap_names(full_name)
  names = full_name.split(" ")
  first_name = names[0]
  last_name = names[1]

  return [last_name, first_name]
end

# puts "---------------"
# puts "Testing swap_names"
# puts "---------------"
# p swap_names('asdf') # => "Enter 2 names"
# p swap_names('as df') # => ['df', 'as']
# p swap_names('123 45') # => ['45', '123']
# p swap_names('123 45 sdf') # => "Enter just 2 names"



def get_spy_name(names)
  # no space in between names or too manynames
  if names.count(" ") == 0
    print "Enter 2 names"
    return nil
  elsif names.count(" ") > 1
    print "Enter just 2 names"
    return nil
  end

  names_arr = swap_names(names)

  names_arr.map!{ |name|
    chars_array = name.chars

    chars_array.map!{ |char|
      char = next_letter(char)
    }
  }

  # capitalize first letter of both names
  names_arr[0][0].capitalize!
  names_arr[1][0].capitalize!

  #insert space after new first name
  names_arr.insert(1, ' ')

  return names_arr.join()
end

# puts "---------------"
# puts "Testing get_spy_name"
# puts "---------------"
# puts get_spy_name("Felicia Torres")

puts "Enter agent name"
agent_name = gets.chomp
names_hash = {}

until agent_name.downcase == 'quit'
  spy_name = get_spy_name(agent_name)

  puts "Spy name: " + spy_name
  names_hash[agent_name] = spy_name
  agent_name = gets.chomp
end

names_hash.each { |key, value|
  puts "#{value} is actually #{key}"
}