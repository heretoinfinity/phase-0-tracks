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

puts "-------------------------"
puts "Release 2"
puts "-------------------------"

arr2 = [-2, 40, 30, 3, 2, 1000, -30]

puts "array before delete_if"
puts arr2

arr2.delete_if{ |number|
  number < 5
}

puts "array after delete_if"
puts arr2
puts "-------------------------"

puts "hash before delete_if"
puts hash_

hash_.delete_if{ |key, value|
  key == 'Depp'
}

puts "hash after delete_if"
puts hash_
puts "-------------------------"

arr3 = [-2, 40, 30, 3, 2, 1000, -30]
puts "array before keep_if"
puts arr3
arr3.keep_if{ |number|
  number < 5
}

puts "array after keep_if"
puts arr3
puts "-------------------------"

puts "hash before keep_if"
puts hash_

hash_.keep_if{ |key, value|
  key == 'Dicaprio'
}

puts "hash after keep_if"
puts hash_
puts "-------------------------"

arr4 = [-2, 40, 30, 3, 2, 1000, -30]
puts "array before select!"
puts arr4
arr4.select!{ |number|
  number < 5
}

puts "array after select!"
puts arr4
puts "-------------------------"

hash_2 = {
  'Clooney' => 'ER',
  'Bale' => 'Batman',
  'Depp' => 'Pirates of the Carribean',
  'Dicaprio' => 'Titanic'
}

puts "hash before select!"
puts hash_2

hash_2.select!{ |key, value|
  key == 'Dicaprio'
}

puts "hash after select!"
puts hash_2
puts "-------------------------"

arr5 = [-2, 40, 30, 3, 2, 1000, -30]
puts "array before take_while"
puts arr5
new_arr = arr5.take_while{ |number|
  number < 5 # => [-2]
}

puts "array after take_while"
puts new_arr
puts "-------------------------"

hash_3 = {
  'Clooney' => 'ER',
  'Bale' => 'Batman',
  'Depp' => 'Pirates of the Carribean',
  'Dicaprio' => 'Titanic'
}

puts "hash before delete_if"
puts hash_3

hash_3.delete_if{ |key, value|
  key == 'Depp'
}

puts "hash after delete_if"
puts hash_3
puts "-------------------------"