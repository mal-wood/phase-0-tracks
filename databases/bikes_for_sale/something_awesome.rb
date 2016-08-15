# Ideas for program 
## User is welcomed and given a list of 10 randomly generated cities
## The user is then asked which city they would like to visit on a whim 
## The user chooses by typing the ID of the city 
## Program prints a statement about the user's upcoming trip 

# require necessary gems
	require 'sqlite3'
	require 'faker'

# create the database for the cities 
db = SQLite3::Database.new ("bikes_for_sale.db")

# create the table and setting up what columns we want it to have 
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