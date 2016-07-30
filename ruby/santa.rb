class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday
		@age= @age + 1
		@age
	end

	def get_mad_at(name)
		@name = name
		@reindeer_ranking = @reindeer_ranking.insert(8, @reindeer_ranking.delete_at(@reindeer_ranking.index(name)))
		@reindeer_ranking
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 

 
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end 

#Testing above methods with driver code 

# kelsey = Santa.new
# kelsey.speak
# kelsey.eat_milk_and_cookies("sugar cookie")

# santas = []
# genders = ["nonbinary", "agender", "genderqueer", "female"]
# ethnicities = ["black", "Latinx", "white", "prefer not to disclose"]

# genders.length.times do |item|
# 	santas << Santa.new(genders[item], ethnicities[item])
# end

# happy_santa = Santa.new("agender", "Chinese", "Rudolph")
# happy_santa.eat_milk_and_cookies("lemon cookies")
# happy_santa.celebrate_birthday
# happy_santa.get_mad_at("Blitzen")
# p happy_santa.gender=("bigender")
# p "Santa is #{happy_santa.age} years old and is #{happy_santa.ethnicity}"

# new_santa = Santa.new("female", "American")
# p new_santa.age
# p new_santa.ethnicity

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
50.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

santas.each do |x|
	x.age = rand(140)
end

p santas.gender

# santas.each do |x|
# 	p x.gender x.ethnicity
# end