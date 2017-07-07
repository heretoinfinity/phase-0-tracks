arr = ['Ruby', 'JavaScript', 'HTML', 'CSS']

hash_ = {
  'Clooney' => 'ER',
  'Bale' => 'Batman',
  'Depp' => 'Pirates of the Carribean',
  'Dicaprio' => 'Titanic'
}

puts "array before .each"
puts arr

arr.each { |item|
  puts "I know #{item}"
}

puts "array after .each"
puts arr
puts "-------------------------"

puts "hash before .each"
puts hash_

hash_.each { |actor, movie|
  puts "#{actor} starred in #{movie}"
}

puts "hash after .each"
puts hash_
puts "-------------------------"

puts "array before map"
puts arr

arr.map! { |item|
  if item == 'HTML' || item == 'CSS'
    item = "#{item} is a markup language"
  else
    item = "#{item} is a programming language"
  end
}

puts "array after map"
puts arr

