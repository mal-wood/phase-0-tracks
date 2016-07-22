print "What is your name?"
full_name = gets.chomp
new_array = full_name.split(" ")
new_array[0], new_array[1] = new_array[1], new_array[0]
full_name= new_array.join(" ")
letters= full_name.split('')

vowels = ["a","e","i","o","u"]
consonants =["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]

letters.map! do |letter|
	if vowels.include? letter
		new_index= vowels.index(letter) + 1
		new_letter= vowels[new_index]
		letter=new_letter
	end
	if consonants.include? letter 
		con_index= consonants.index(letter) + 1
		con_letter= consonants[con_index]
		letter = con_letter
	end
end
puts letters