# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative is when you are trying to link this file with a path in relation to this file. Require would require an absolute path.
#

require_relative 'state_data'

class VirusPredictor

# Creates a new instance of virus predictor
def initialize(state_of_origin, population_density, population)
  @state = state_of_origin
  @population = population
  @population_density = population_density

end

# private

# Runs predicted_deaths and speed_of_spread methods
def virus_effects
 # predicted_deaths(@population_density, @population, @state)
 # speed_of_spread(@population_density, @state)
  puts "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{speed_of_spread} months."
end

 private

# Takes population density variable, based on how dense the population is it gives us the number of people that will die
def predicted_deaths #(population_density, population, state)
  # predicted deaths is solely based on population density
  if @population_density >= 200
    number_of_deaths = (@population * 0.4).floor
  elsif @population_density >= 150
    number_of_deaths = (@population * 0.3).floor
  elsif @population_density >= 100
    number_of_deaths = (@population * 0.2).floor
  elsif @population_density >= 50
    number_of_deaths = (@population * 0.1).floor
  else
    number_of_deaths = (@population * 0.05).floor
  end

 # case @population_density #often used for equality

  #when (1..50)
    #factor = 0.05

 # population * factor

  # print "#{@state} will lose #{number_of_deaths} people in this outbreak"

end

# Takes population density and determines months that it will take for virus to spread
# The more dense the population, the faster it will spread

def speed_of_spread #(population_density, state) #in months
  # We are still perfecting our formula here. The speed is also affected
  # by additional factors we haven't added into this functionality.
  speed = 0.0

  if @population_density >= 200
    speed += 0.5
  elsif @population_density >= 150
    speed += 1
  elsif @population_density >= 100
    speed += 1.5
  elsif @population_density >= 50
    speed += 2
  else
    speed += 2.5
  end

 # puts " and will spread across the state in #{speed} months.\n\n"

end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects
end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
#The hash rocket and then the colon key indicator. Using the two different styles really makes sense of a complex data structure like STATE_DATA. 

# What does require_relative do? How is it different from require?
# Require relative is when you are trying to link this file with a path in relation to this file. Require would require an absolute path.

# What are some ways to iterate through a hash?
# Iterate with each/map

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Mostly just that they seemed really unnecessary- they were kind of cluttering the class. 

# What concept did you most solidify in this challenge?
# Learned quite a lot about instance variables/scope in general and also how to iterate through a more complex data structure. 