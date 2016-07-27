class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		puts "Santa's gender: #{gender}"
		puts "Santa's ethnicity: #{ethnicity}"
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def celebrate_birthday
		@age= @age + 1
		puts @age
	end

	def get_mad_at(name)
		@name = name
		@reindeer_ranking.insert(8, @reindeer_ranking.delete_at(@reindeer_ranking.index(name)))
		p @reindeer_ranking
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


santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
50.times do |i|
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

santas.each do |santa|
	puts "#{santa}"
end
