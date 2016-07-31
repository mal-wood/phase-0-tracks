#game class

class WordGuessing

	attr_accessor :word_array

	def initialize 
		@word_array = word_array
	end

	def underscore(word)
		word_array = word.split("")
		secret_letters = "_ " * word_array.length
		word_array = secret_letters
	end

	def guess_include(guess)
		new_string = ""
		word_array.each do |char|
			if guess.include? (char)
				new_string << char
			else new_string << "_ "
			end
		end
		new_string
	end
end