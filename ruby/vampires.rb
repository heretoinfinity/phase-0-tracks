puts "What is your name?"
applicant_name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread." \
" Should we order some for you? "
serve_garlic? = gets.chomp.downcase
if serve_garlic == "yes"
  serve_garlic = true
else
  serve_garlic = false

puts "Would you like to enroll in the company’s " \
"health insurance?"
needs_insurance? = gets.chomp.downcase
if needs_insurance? == "yes"
  needs_insurance? = true
else
  needs_insurance? = false

