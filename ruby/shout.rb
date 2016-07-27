# module Shout

#     def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   	def self.yell_happily(words)
#   	words + " Weeeee" + " :D"
#   end
# end

# puts Shout.yell_angrily("Donald Trump")
# puts Shout.yell_happily("Rainbows and unicorns and butterflies")

module Shout
	def yell(words)
		words + "!!!!"
	end 
end 

class Person 
	include Shout
end 

class Megaphone
	include Shout
end 

human = Person.new
puts human.yell("I am a person")

blue_megaphone = Megaphone.new 
puts blue_megaphone.yell("I am an inanimate object")