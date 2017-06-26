require 'Date'

puts "How many employees will be processed?"
num_applicants = gets.chomp.to_i

(0...num_applicants).each {
  puts "What is your name?"
  applicant_name = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  year = gets.chomp.to_i

  puts "Our company cafeteria serves garlic bread." \
  " Should we order some for you? "
  serve_garlic = gets.chomp.downcase
  if serve_garlic == "yes"
    serve_garlic = true
  else
    serve_garlic = false
  end

  puts "Would you like to enroll in the company’s " \
  "health insurance?"
  needs_insurance = gets.chomp.downcase
  if needs_insurance == "yes"
    needs_insurance = true
  else
    needs_insurance = false
  end

  current_year = Date.today.year

  if current_year - year == age
    age_right = true
  else
    age_right = false
  end


  if age_right && (serve_garlic || needs_insurance)
    if applicant_name == "Drake Cula" \
    || applicant_name == "Tu Fang"
      puts "Definitely a vampire."
    else
     puts "Probably not a vampire."
   end
  elsif !age_right && (!serve_garlic && !needs_insurance)
    puts "Almost certainly a vampire."
  elsif !age_right && (!serve_garlic || !needs_insurance)
    puts "Probably a vampire"
  else
    puts "Results inconclusive."
  end
}
