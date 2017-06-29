=begin
the client's name, age, number of children, decor theme,
days for work
phone
done work before

prompt user for information
convert user information into appropriate values, converting
yes and no to true and false respectively
When all information is entered, display the hash as is

Display options of what the user can change, and allow
him to enter corrected information

When done or if user says that there are no changes, display
the hash again


=end

entry = {}

puts "Enter your name"
applicant_name = gets.chomp
entry[:applicant_name] = applicant_name

puts "Enter your age"
age = gets.chomp.to_i
entry[:age] = age

puts "Enter decor theme"
decor_theme = gets.chomp
entry[:decor_theme] = decor_theme

puts "Enter desired duration of work in days"
duration = gets.chomp.to_i
entry[:duration] = duration

puts "Have we done work with you before? (y/n)"
work_before = gets.chomp.downcase
if work_before == 'y'
  work_before = true
else
  work_before = false
end

entry[:work_before] = work_before

puts entry

puts "Anything you would like to change?"
change = gets.chomp

puts "Updated value"
updated_value = gets.chomp

if change != "none"
  entry[change.to_sym] = updated_value
end

puts "Latest version of entered info"
puts entry







