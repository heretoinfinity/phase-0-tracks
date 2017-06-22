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

puts hamster_name
puts volume
puts fur_color
puts good_for_adoption
print age