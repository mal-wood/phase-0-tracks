# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string of items into array by whitespace
  # assign the array to the keys in a new hash using an iterator 
  # set default quantity to one
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(items)
	grocery_items = {}

	array_of_items= items.split(' ')

	array_of_items.each do |item|
		grocery_items[item] = 1
	end

	p grocery_items
end

sample_list = create_list('carrots apples cereal pizza')
p sample_list.class

# Method to add an item to a list
# input: output from previous method, item name, and optional quantity(default quantity - one)
# steps: push new item and quantity to the hash
# output: hash with new key/value added

def add_item(list, item, quantity)
		list[item] = quantity
		list 
end 

sample_list= add_item(sample_list, "blueberries", 3)
p sample_list

# Method to remove an item from the list
# input: output from previous method, item to remove
# steps: delete item from the hash
# output: hash with item removed

def remove_item(list, item)
	list.delete(item)
	list
end

sample_list= remove_item(sample_list, "carrots")
p sample_list

# Method to update the quantity of an item
# input: output from previous method
# steps: update quantity of an existing item 
# output: hash with updated quantity

def update_item(list, item, new_quantity)
	list[item] = new_quantity
	list
end

sample_list=update_item(sample_list, "yogurt", 5)
p sample_list

# Method to print a list and make it look pretty
# input: output from previous method
# steps: add a title to the list and print items next to their quantities 
# output: updated list 

def final_list(list)
	puts "Grocery List"
	list.each do |item, quantity|
		puts "#{item} - #{quantity}"
	end
end

final_list(sample_list)

# What did you learn about pseudocode from working on this challenge?
# I learned how helpful it can be to take the time to thoughtfully organize pseudocode. Once my pseudocode was in place, it was much easier to actually jump in and write the methods.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Arrays would make this challenge more complex since it would just be one data structure with a combined list of items and quantities. The key/value pairs are incredibly helpful for instances like this one- with grocery items and their quantities. It seems to make the code cleaner.   

# What does a method return?
#Whatever value is listed after 'return' (it might not read 'return' if implicit return). 

# What kind of things can you pass into methods as arguments?
#Variables, variables assigned to the return of another method, strings, integers, arrays, hashes

# How can you pass information between methods?
# Assign the return of a method to a variable and use that variable in another method. 

# What concepts were solidified in this challenge, and what concepts are still confusing?
# This helped me see more of the benefits of pseudocoding. I usually jump right into coding and end up trying a bunch of different things without having a clear map. I want to implement pseudocoding more as well as just commenting in certain areas of my code to make everything as clean and understandable as possible. 


