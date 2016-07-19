complete_application = {
	name: "Wylder Wood",
	address: "44 Moon Drive",
	email: "wyldworld@idk.com",
	phone: "444-444-4444",

	fave_blue: "Periwinkle",

	wallpaper_pref: "Paisley",

	ombre_is: "Practically medieval in its appalling irrelevance"

}

complete_application[:address] = "44 Sun Drive"

complete_application[:email] = "wydler@idk.com"

complete_application[:wallpaper_pref] ="IDK"

complete_application[:hired] = "yes"

email_yeah= complete_application[:phone]
p email_yeah

puts complete_application[:wallpaper_pref] + complete_application[:ombre_is]

p complete_application