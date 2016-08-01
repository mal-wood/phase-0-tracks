#game class

class WordGuessing

	attr_accessor :letter_array, :guess_count
	attr_reader :is_over

	def initialize 
		@letter_array = []
		@is_over = false
		@new_string = ""
		@guess_count = 0
	end

	def underscore(word)
		@letter_array = word.split("")
		secret_letters = "_ " * @letter_array.length
	end

	def guess_include(guess)
		new_string = ""
		@letter_array.each do |x|
			if guess.include? x
				new_string << x
			else 
				new_string << "_ "
			end
		end
		@guess_count +=1 
		@new_string = new_string
	end
end

puts "Wecome to the word guessing game! User one: please enter in a word for user two to guess."
game = WordGuessing.new
guess = gets.chomp

secret_guess = game.underscore("unicorn")

puts "Player two, take a look at the word and guess a letter you think it might contain #{secret_guess}"
while !game.is_over && (game.guess_count < guess.length)
letter_entered = gets.chomp
guess_with_letters = game.guess_include(letter_entered)
p guess_with_letters
guesses_left = guess.length - game.guess_count
p "You have #{guesses_left} guesses left!"
if guess == letter_entered
	puts "You guessed it!"
	break
end
end

puts "The word was #{guess}."