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

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("chocolate")