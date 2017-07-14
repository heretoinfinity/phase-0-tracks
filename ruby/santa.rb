class Santa
  attr_reader(:age, :ethnicity)
  attr_accessor(:gender)

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

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at
    reindeer = @reindeer_ranking.shift
    @reindeer_ranking.push(reindeer)
  end

  # def change_gender=(gender)
  #   @gender = gender
  # end

  # def get_age
  #   @age
  # end

  # def get_ethnicity
  #   @ethnicity
  # end
end

santas = []
genders = ["agender", "female", "bigender", "male", "female", \
  "Abimegender", "Absorgender", "Adamasgender", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", \
  "prefer not to say", "Mystical Creature (unicorn)", \
  "bird", "animal", "N/A"]

1000.times {
  santas << Santa.new(genders[rand(genders.length)], \
    ethnicities[rand(ethnicities.length)])
}
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")
puts santas