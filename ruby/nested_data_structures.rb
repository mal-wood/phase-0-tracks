art_festival = {
	art_booths: {
		items_for_sale: ["paintings", "jewlery", "pottery",],
		amount: {
			number_of_artists: 10,
			number_of_pieces: 50
		}
	},
	parking: {
		spots: {
			number_of_spots: 300,
			expected_attendance: 500
		},
		locations_of_lots: ["mall", "grocery store", "street parking"]
	},
	food: {
		vendors: ["Taco Truck", "Fabulous Falafel", "Barry's Burgers" ],
		numbers: {
			food_seating: 150,
			trash_cans: 50
		}
	}
}

p art_festival[:parking][:spots][:number_of_spots]
p art_festival[:art_booths][:items_for_sale][2]
p art_festival[:parking][:locations_of_lots].push("convention center")
p art_festival[:food][:numbers][:trash_cans]