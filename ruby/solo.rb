print "What is your name? Type 'exit' to quit."
while full_name = gets.chomp
	if full_name == "exit"
		print "Goodbye!"
		break
	end

	new_array = full_name.split(" ")

	new_array[0], new_array[1] = new_array[1], new_array[0]

	full_name= new_array.join(" ")

	letters= full_name.split('')

	vowels = ["a","A","e","E","i","I","o","O","u","U"]
	consonants =["b","B","c","C","d","D","f","F","g","G","h","H","j","J","k","K","l","L","m","M","n","N","p","P","q","Q","r","R","s","S","t","T","v","V","w","W","x","X","y","Y","z","Z"]
	
	letters.map! do |letter|
		if vowels.include? letter
			new_index= vowels.index(letter) + 2
			new_letter= vowels[new_index]
			letter=new_letter
		elsif 
			consonants.include? letter
			new_index= consonants.index(letter) + 2
			new_letter=consonants[new_index]
			letter=new_letter
		elsif letter == ' '	
			letter = ' '
		end
	end
	 p letters.join
end