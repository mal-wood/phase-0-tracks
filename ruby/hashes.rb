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
age = gets.chomp

print "Number of children:"
number_of_children = gets.chomp

print "Decor theme:"
decor_theme = gets.chomp

print "Wants walkthrough (y/n):"
walkthrough = gets.chomp


client_info[:name] = name
client_info[:age] = age
client_info[:number_of_children] = number_of_children
client_info[:decor_theme] = decor_theme
client_info[:walkthrough] = walkthrough

p client_info

print "Does the above information look correct? If not, enter in key of value you want to edit. If you do not want to edit anything, please type \"none\"."
mistake = gets.chomp


if mistake == "name" || mistake == "age" || mistake == "number_of_children" || mistake == "decor_theme" || mistake == "walkthrough"
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