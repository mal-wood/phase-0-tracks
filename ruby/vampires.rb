print "How many employees will be processed today?"
employee_num = gets.to_i

while employee_num > 0

	print "What is your name?"
	name = gets.chomp
	if name == "Tu Fang" || name == "Drake Cula"
		is_vampire = true
	else
		is_vampire = false
	end
	
	print "How old are you?"
	age = gets.to_i
	
	print "What year were you born?"
	year_born = gets.to_i
	
	if 2016 - year_born.to_i != age.to_i
		got_age_wrong = true
	else
		got_age_wrong = false
	end
	
	print "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic_bread = gets.chomp
	if garlic_bread == "yes" || garlic_bread =="y" || garlic_bread =="Y" || garlic_bread == "Yes" || garlic_bread =="YES"
		likes_garlic_bread = true
	else
		likes_garlic_bread = false
	end
	
	print "Would you like to enroll in the company's health insurance?"
	health_insurance = gets.chomp
	if health_insurance == "yes" || health_insurance=="y" || health_insurance=="Yes" || health_insurance=="YES"
	 	wants_insurance = true
	 else
	 	wants_insurance = false 
	 end
	
	 print "Type enter to type in allergies:"
	 allergies = gets.chomp
	 	until allergies == "done" 
	 		print "List each allergy and type done when finished:"
	 		allergies = gets.chomp
	 		break if allergies == "sunshine"
	 		end

	 	if !got_age_wrong && (likes_garlic_bread || wants_insurance)
			puts "Probably not a vampire"
		elsif got_age_wrong && ( !likes_garlic_bread && !wants_insurance)
			puts "Almost certainly a vampire"
		elsif got_age_wrong && ( !likes_garlic_bread || !wants_insurance) || allergies == "sunshine"
			puts "Probably a vampire"
	 	elsif is_vampire
			puts "Definitely a vampire"
		else 
			puts "Results inconclusive" 
		end
	employee_num -= 1
	end
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
	exit
