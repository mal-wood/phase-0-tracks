class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		puts "Santa's gender: #{gender}"
		puts "Santa's ethnicity: #{ethnicity}"
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end


	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 


	def eat_milk_and_cookies(cookie_type)
		puts "That was a good xw#{cookie_type}!"
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
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

happy_santa = Santa.new("agender", "Chinese")
happy_santa.eat_milk_and_cookies("lemon cookies")
happy_santa.celebrate_birthday


