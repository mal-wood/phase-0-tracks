def say_goodbye
 puts "Good Bye"
 yield
end

say_goodbye{puts "See you later"}

states_capitals = {
 "California" => "Sacramento",
 "Pennsylvania" => "Harrisburg",
 "Hawaii" => "Honolulu",
 "Texas" => "Austin"
}

abbreviation = ["CA", "PA", "HI", "TX"]

states_capitals.each {|key, value| puts "The capital of #{key} is #{value}."}

states_capitals.map do |key, value|
 if key[0] == value[0]
   puts key
 end
 nil
end

abbreviation.each do |word|
 if word.include? "A"
   puts word
 end
end

abbreviation.map! { |ab| puts ab.downcase}

states_capitals.delete_if {|state, capital| capital == "Austin"}
p states_capitals

abbreviation.delete("CA")
p abbreviation

states_capitals.keep_if {|state, capital| capital == "Honolulu"}
p states_capitals

abbreviation.keep_if {|ab| ab.include? "A" }
p abbreviation

new_array = states_capitals.select {|state, capital| state.length > 8}
p new_array

another_array = abbreviation.select {|ab| ab != "TX" }
p another_array

states_capitals.each do |state, capital|
	break if state.length < 8
	p state
end

drop_array = abbreviation.drop_while {|ab| ab == "CA" }
p drop_array 