#game class

#game class

class WordGuessing

	attr_accessor :word_array
	attr_reader :is_over

	def initialize 
		@word_array = []
		@is_over = false
	end

	def underscore(word)
		@word_array = word.split("")
		secret_letters = "_ " * @word_array.length
	end

	def guess_include(guess)
		new_string = ""
		@word_array.each do |x|
			if guess.include? x
				new_string << x
			else 
				new_string << "_ "
			end
		end
		new_string
	end
end

puts "Wecome to the word guessing game! User one: please enter in a word for user two to guess."
game = WordGuessing.new
guess = gets.chomp

secret_guess = game.underscore("unicorn")

while !game.is_over
puts "Player two, take a look at the word and guess a letter you think it might contain #{secret_guess}"
letter_entered = gets.chomp
guess_with_letters = game.guess_include(letter_entered)
p guess_with_letters
end

p guess_with_letters


