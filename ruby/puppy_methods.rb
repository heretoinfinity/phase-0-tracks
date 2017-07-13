class Puppy
  def initialize
    puts "Initializing new puppy instance ..."
  end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times {
      puts "Woof!"
    }
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(int)
    int*9
  end

  def whimper
    puts "*whimpers*"
  end
end

# pop = Puppy.new
# pop.fetch('ball')
# pop.speak(3)
# pop.roll_over
# pop.dog_years(3)

class Gymnast
  def initialize
    puts "Created gymnast"
  end

  def flip
      puts "Flipping"
  end

  def jump
      puts "Jumping"
  end
end

gymnasts = []
# DRIVER CODE FOR GYMNAST
50.times { |ind|
  gymnasts << Gymnast.new
}
# performer = Gymnast.new


gymnasts.each { |gymnast|
    gymnast.flip
    gymnast.jump
}