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

puts adult.yell_angrily('Arg')
puts child.yell_happily('Wow')

# puts Shout.yell_angrily("Agh")
# puts Shout.yell_happily("Yay")