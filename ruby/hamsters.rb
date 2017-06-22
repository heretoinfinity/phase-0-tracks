puts "Enter hamster's name"
hamster_name = gets.chomp
puts "Enter volume level"
volume = gets.chomp.to_i
puts "Enter hamster's fur color"
fur_color = gets.chomp
puts "Good for adoption?"
good_for_adoption = gets.chomp.downcase
puts "Enter hamster's age"
age = gets.chomp

if good_for_adoption == "yes"
  good_for_adoption = true
else
  good_for_adoption = false
end

if age == ""
  age = nil
else
  age = age.to_i
end

puts "The hamster's name is #{hamster_name}."
puts "The volume is #{volume}."
puts "The hamster's fur color is #{fur_color}."

if good_for_adoption
  puts "Yes! The hamster is good for adoption."
else
  puts "Oh no! The hamster is not good for adoption."
end

print age
if age != nil
  puts "The hamster is #{age} years old."
else
  puts "Age was not entered."
end

