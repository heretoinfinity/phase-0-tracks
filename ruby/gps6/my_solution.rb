# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#

require_relative 'state_data'
# including the code in state_data.rb above

class VirusPredictor
  # create an instance of VirusPredictor initializing
  # its 3 instance variables with the given values
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # estimate future spread and length of spread of the virus
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # give rounded down estimate of future deaths
  # based on population density and corresponding
  # multiplier to the population total
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 50
      number_of_deaths = (@population * (@population_density / 50).floor * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  # determine how many months it will take the virus to spread
  # given the population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    else
      speed += 2.5 - ((@population_density / 50).floor * 0.5)
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do | state_name, population_info|
  this_instance = VirusPredictor.new(state_name, \
    STATE_DATA[state_name][:population_density], \
    STATE_DATA[state_name][:population])
  this_instance.virus_effects
end
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin

What are the differences between the two different hash syntaxes shown in the state_data file?
The outer hash uses strings and the hash rocket syntax,
while the inner hash uses symbol syntax.

What does require_relative do? How is it different from require?
require_relative makes Ruby look for file/module using the
working directory as reference while require makes Ruby
search based on the PATH variable, which references where
Ruby interpreter files are stored.

What are some ways to iterate through a hash?
Using a .each method and using pipe arguments for the key and
value.

When refactoring virus_effects, what stood out to you about the variables, if anything?
Since they are instance variables, we don't have to pass them
into the method because they are accessbile through the class.

What concept did you most solidify in this challenge?
Using iteration to create complex objects
Understanding scope of instance variables, not requiring to
pass in instance variables as arguments to instance methods,
i.e., DRY code
=end