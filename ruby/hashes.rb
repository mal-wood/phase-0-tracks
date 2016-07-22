#Create empty hash
# Ask user to enter in details of their client 
# Store each piece of input in hash 

#Print out hash
#Ask user to look at the information and give them option to update a key
#If designer says "none", skip 
#If designer enters in a specific key, allow them to type a new value
# Have that value updated in the hash

#Print the lastest version in hash

client_info = {}

print "Client's name:"
name = gets.chomp

print "Age:"
age = gets.chomp.to_i

print "Number of children:"
number_of_children = gets.chomp.to_i

print "Wants walkthrough (y/n):"
walkthrough = gets.chomp

# Ask user if they like a certain kind of wallpaper
#If they do like the wallpaper, print it to the array
# If not, do not include in the array

kind_of_wallpaper = ["polka dot", "striped", "rainbow", "floral"]

def wallpaper_generator(array)
	new_array = []

	array.map! do |style|
	print "Do you like #{style} style of wallpaper? (y/n)"
	wallpaper_pref = gets.chomp

	if wallpaper_pref == "y"
		new_array << style
	end	
end
new_array
end

paper_pref = wallpaper_generator(kind_of_wallpaper)

paint_colors = ["blue", "red", "green", "yellow"]

def paint_generator(array)
	positive_array = []

	array.map! do |color|
	print "Do you like the paint color #{color}? (y/n)"
	paint_pref = gets.chomp

	if paint_pref == "y"
		positive_array << color
	end
end
	positive_array
end

color_pref = paint_generator(paint_colors)

client_info[:name] = name
client_info[:age] = age
client_info[:number_of_children] = number_of_children
client_info[:walkthrough] = walkthrough
client_info[:wallpaper_pref] = paper_pref
client_info[:paint_pref] = color_pref

p client_info

print "Does the above information look correct? If not, enter in key of value you want to edit. If you do not want to edit anything, please type \"none\"."
mistake = gets.chomp


if mistake == "name" || mistake == "age" || mistake == "number_of_children" || mistake == "decor_theme" || mistake == "walkthrough" || mistake == "wallpaper_pref"
	key_to_update = mistake.to_sym
	print "Please update new value:"
	new_value = gets.chomp
	client_info[key_to_update] = new_value
	p client_info
elsif mistake == "none"
	p client_info
else
	print "Do not recognize that input."
end