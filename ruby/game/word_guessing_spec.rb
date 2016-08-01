#Class for word-guessing game 
	#Initialize the game with attributes: word, guess count, and is over 
	# A method that takes user input and turns it into a string only containing "_" for each character of the input 
	# A method that replaces any correctly guessed letter in the string of underscore's

require_relative 'word_guessing'

describe WordGuessing do
	let(:game) { WordGuessing.new }

it "replaced the given string with as many underscores as the length of the string" do
	expect(game.underscore("secret")).to eq "_ _ _ _ _ _ "
end 

it "places any correctly guessed letters into the string and returns the rest as underscores" do
	expect(game.guess_include("s")).to eq "s _ _ _ _ _ "
end
end