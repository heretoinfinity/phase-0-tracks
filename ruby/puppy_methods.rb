class Puppy
  def initiali
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
    puts "Oo oo"
  end
end

pop = Puppy.new
pop.fetch('ball')
pop.speak(3)
pop.roll_over
pop.dog_years(3)
