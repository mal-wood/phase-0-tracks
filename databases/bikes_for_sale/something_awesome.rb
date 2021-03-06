# Ideas for program 
## User is welcomed and given a list of 10 randomly generated bikes for sale
## The user is asked to type the product number of the bike they want
## User is given contact info for person selling

# require necessary gems
	require 'sqlite3'
	require 'faker'

# create the database for the bikes
db = SQLite3::Database.new ("bikes_for_sale.db")

# create the table and setting up columns
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS bike_info (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		color VARCHAR(255),
		price INT,
		email VARCHAR(255),
		miles_away INT
		)
	SQL

# actually create the table 
db.execute(create_table_cmd)

# method to generate the bike info
def create_bike_info (db, name, color, price, email, miles_away)
	db.execute("INSERT INTO bike_info(name, color, price, email, miles_away) VALUES (?, ?, ?, ?, ?)", [name, color, price, email, miles_away])
end 

# creating the bikes and pushing them into the database
10.times do 
	create_bike_info(db, Faker::Name.name, Faker::Color.color_name.upcase, Faker::Number.number(3), Faker::Internet.email, Faker::Number.between(1, 25) )
end

# setting the bikes table as a hash and returning the bikes ID and NAME 
db.results_as_hash = true
bike_info = db.execute("SELECT * FROM bike_info")

## USER INTERFACE
puts "***** Get a bike and get outside! Press ENTER for a list of bikes for sale near you. *****"
continue = gets.chomp

bike_info.each do |bike|
	p "Bike Number: #{bike['id']} || Color: #{bike['color']} || Cost: $#{bike['price']} || Located: #{bike['miles_away']} miles away"
end

# ask user to choose the product number of the bike they are interested in 
print "Please type the product number of the bike you are interested in to get the owner's contact info!"
bike_choice = gets.chomp 

# give user contact info for bike they want
bike_info.each do |bic|
	if bike_choice.to_i == bic['id']
		print "#{bic['color'].upcase} is a great choice :)! Email #{bic['name']} at #{bic['email']} for more details about the bike!"
	end
end

# end

