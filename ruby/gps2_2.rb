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


