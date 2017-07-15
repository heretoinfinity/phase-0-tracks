module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yell_happily(words)
    "#{words}. :)"
  end
end

class Child
  include Shout
end

class Adult
  include Shout
end

child  = Child.new
adult = Adult.new

puts "child angry: #{child.yell_angrily('Arg')}"
puts "child happy: #{child.yell_happily('Wow')}"

puts "adult angry: #{adult.yell_angrily('Arg')}"
puts "adult happy: #{adult.yell_happily('Wow')}"

# puts Shout.yell_angrily("Agh")
# puts Shout.yell_happily("Yay")