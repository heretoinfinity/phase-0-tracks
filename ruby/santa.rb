class Santa
  @gender
  @ethnicity
  @reindeer_ranking
  @age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @reindeer_ranking = ["Rudolph", "Dasher", \
      "Dancer", "Prancer", "Vixen", "Comet", \
      "Cupid", "Donner", "Blitzen"]
    @ethnicity = ethnicity
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
end

santas = []
genders = ["male", "female", "gender fluid"]
ethnicity = ["black", "white", "Hispanic"]

genders.length.times { |item|
  santas << Santa.new(genders[item], ethnicity[item])
}
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
puts santas