#Brewery
amendment = Brewery.create(name: "21st Amendment", email: "21st@example.com", city: "San Francisco, CA", password: "test")
cellermaker = Brewery.create(name: "Cellermaker", email: "celler@example.com", city: "San Francisco, CA", password: "test")
revolution = Brewery.create(name: "Revolution Brewing", email: "revolution@example.com", city: "Chicago, IL", password: "test")
wayfinder = Brewery.create(name: "Wayfinder", email: "wayfinder@example.com", city: "Portland, OR", password: "test")
ommegang = Brewery.create(name: "Omemegang Brewery", email: "omemegang@example.com", city: "Cooperstown, NY", password: "test")
berlic = Brewery.create(name: "Baerlic Breweing Co", email: "baerlic@example.com", city: "Portland, OR", password: "test")
black_sands = Brewery.create(name: "Black Sands", email: "blacksands@example.com", city: "San Francisco, CA", password: "test")
fort_pont = Brewery.create(name: "Fort Point Beer Co", email: "fortpoint@example.com", city: "San Francisco, CA", password: "test")
goose_island = Brewery.create(name: "Goose Island Beer Company", email: "goose@example.com", city: "Chicago, IL", password: "test")

#Brand
#21st Amendment 1
amendment_1 = Brand.create(name: "Sparkale", style: "Sparkling Rose Ale", abv: "5.5%", brewery_id: 1)
amendment_2 = Brand.create(name: "Brew Free! OR Die IPA", style: "IPA", abv: "7.0%", brewery_id: 1)
amendment_3 = Brand.create(name: "Blood Orange Brew Free! OR Die IPA", style: "IPA", abv: "7%", brewery_id: 1)
amendment_4 = Brand.create(name: "El Sully", style: "Lager", abv: "4.8%", brewery_id: 1)
amendment_5 = Brand.create(name: "Blah Blah Blah IPA", style: "Double IPA", abv: "8%", brewery_id: 1)
amendment_6 = Brand.create(name: "Tasty IPA", style: "IPA", abv: "6.8%", brewery_id: 1)
amendment_7 = Brand.create(name: "Hello or High Watermelon", style: "Wheat Beer", abv: "4.9%", brewery_id: 1)

#cellermaker 2
cellermaker_1 = Brand.create(name: "Wicked Juicy", style:"IPA", abv: "7%", brewery_id: 2)
cellermaker_2 = Brand.create(name: "The Glow", style:"Pale Ale", abv: "5.7%", brewery_id: 2)
cellermaker_3 = Brand.create(name: "Double Dobis", style:"Double IPA", abv: "8.2%", brewery_id: 2)
cellermaker_4 = Brand.create(name: "Swiss Trees", style:"IPA", abv: "7.2%", brewery_id: 2)
cellermaker_5 = Brand.create(name: "Amarilloman", style:"IPA", abv: "6.4%", brewery_id: 2)

#revolution brewing 3
revolution_1 = Brand.create(name: "Anti Hero", style:"IPA", abv: "6.7%", brewery_id: 3)
eugene = Brand.create(name: "Eugene Porter", style:"Robust Porter", abv: "6.8%", brewery_id: 3)
revolution_2 = Brand.create(name: "Every Day Hero", style:"IPA", abv: "4.3%", brewery_id: 3)
revolution_3 = Brand.create(name: "Fist City", style:"Pale Ale", abv: "5.5%", brewery_id: 3)
revolution_4 = Brand.create(name: "Rev Pils", style:"Pilsner", abv: "5.5%", brewery_id: 3)
revolution_5 = Brand.create(name: "Cross of Gold", style:"Golden Ale", abv: "4.8%", brewery_id: 3)

#wayfinder 4
wayfinder_1 = Brand.create(name: "Hell Lagerbier Hell", style:"Lager", abv: "4.7%", brewery_id: 4)
wayfinder_2 = Brand.create(name: "Best British", style:"Ale", abv: "4.2%", brewery_id: 4)
wayfinder_3 = Brand.create(name: "Flower In The Kettle", style:"Hazy IPA", abv: "6.5%", brewery_id: 4)
wayfinder_4 = Brand.create(name: "Hidden Hand", style:"Black Lager", abv: "5.2%", brewery_id: 4)
wayfinder_5 = Brand.create(name: "Gravity Drop", style:"Porter", abv: "9.2%", brewery_id: 4)
wayfinder_6 = Brand.create(name: "Czech Pils", style:"Decoted Pilsner", abv: "4.9%", brewery_id: 4)
wayfinder_7 = Brand.create(name: "UK IPA", style:"British IPA", abv: "6.0%", brewery_id: 4)
wayfinder_8 = Brand.create(name: "Panoply Weissbier", style:"Hefeweizen", abv: "5.0%", brewery_id: 4)

#ommegang 5
ommegang_1 = Brand.create(name: "Witte", style: "White Ale", abv: "5.2%", brewery_id: 5)
ommegang_2 = Brand.create(name: "Rare Vos", style: "Amber Ale", abv: "6.5%", brewery_id: 5)
ommegang_3 = Brand.create(name: "Nirvana", style: "IPA", abv:"6.5%", brewery_id: 5)
ommegang_4 = Brand.create(name: "Abbey Ale", style: "Ale", abv: "8.2%", brewery_id: 5)
ommegang_5 = Brand.create(name: "Three Philosophers", style:"Belgian Kriek", abv: "9.7%", brewery_id: 5)
ommegang_6 = Brand.create(name: "Hennepin", style: "Saison", abv: "7.7%", brewery_id: 5)
ommegang_7 = Brand.create(name: "Brut IPA", style: "IPA", abv: "6.3%", brewery_id: 5)

#berlic 6
berlic_1 = Brand.create(name: "Dad Beer", style: "Lager", abv: "4.8%", brewery_id: 6)
berlic_2 = Brand.create(name: "Punk Rock Time", style: "IPA", abv: "6.2%", brewery_id: 6)
berlic_3 = Brand.create(name: "Green Matter", style: "Double IPA", abv: "8.0%", brewery_id: 6)
berlic_4 = Brand.create(name: "Nice & Easy", style: "Salted Oat Gose", abv: "4.9%", brewery_id: 6)
berlic_5 = Brand.create(name: "Altbierior Motives", style: "Altbier", abv: "5.5%", brewery_id: 6)
berlic_6 = Brand.create(name: "Night Howler", style: "Imperial Stout", abv: "10.0%", brewery_id: 6)
berlic_7 = Brand.create(name: "Fuzz Box", style: "Hazy IPA", abv: "6.7%", brewery_id: 6)

#black_sands 7
black_sands_1 = Brand.create(name: "Dark Echo", style: "English Brown Ale", abv: "5.25%", brewery_id: 7)
black_sands_2 = Brand.create(name: "Resting Haze", style: "Hazy Double IPA", abv: "7.1%", brewery_id: 7)
black_sands_3 = Brand.create(name: "Smash Citra Double", style: "Double IPA", abv: "8.7%", brewery_id: 7)
black_sands_4 = Brand.create(name: "Night Song", style: "Smash IPA", abv: "6.2%", brewery_id: 7)
black_sands_5 = Brand.create(name: "Pinot Barrel Aged Exlipse", style: "Saison", abv: "7.7%", brewery_id: 7)
black_sands_6 = Brand.create(name: "Baja", style: "Kolsh", abv: "4.4%", brewery_id: 7)

#fort_pont 8
fort_pont_1 = Brand.create(name: "KSA", style: "Kolsh Style Ale", abv: "4.6%", brewery_id: 8)
fort_pont_2 = Brand.create(name: "Sonder", style: "Pale Ale", abv: "6.2%", brewery_id: 8)
fort_pont_3 = Brand.create(name: "Villager", style: "IPA", abv: "6.3%", brewery_id: 8)
fort_pont_4 = Brand.create(name: "Westfalia", style: "Red Ale", abv: "5.6%", brewery_id: 8)
fort_pont_5 = Brand.create(name: "Animal", style: "Tropical IPA", abv: "7.5%", brewery_id: 8)
fort_pont_6 = Brand.create(name: "Resonance", style: "Blended Saison", abv: "6.5%", brewery_id: 8)
fort_pont_7 = Brand.create(name: "Manzanita", style: "Smoked Altbier", abv: "6.5%", brewery_id: 8)
fort_pont_8 = Brand.create(name: "Nitro", style: "Summer Porter", abv: "4.0%", brewery_id: 8)

#goose_island 9
goose_island_1 = Brand.create(name: "IPA", style: "IPA", abv: "5.9%", brewery_id: 9)
goose_island_2 = Brand.create(name: "312", style: "Urban Wheat Ale", abv: "4.2%", brewery_id: 9)
goose_island_3 = Brand.create(name: "Next Coast IPA", style: "IPA", abv: "7.0%", brewery_id: 9)
goose_island_4 = Brand.create(name: "Natural Villain", style: "Lager", abv: "4.7%", brewery_id: 9)
goose_island_5 = Brand.create(name: "Green Line", style: "American Pale Ale", abv: "5.4%", brewery_id: 9)
goose_island_6 = Brand.create(name: "Matilde", style: "Belgian Style Ale", abv: "7.0%", brewery_id: 9)
goose_island_7 = Brand.create(name: "Sofie", style: "Belgian Style Farmhouse Ale", abv: "6.5%", brewery_id: 9)

# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
# Brand.create(name: "", style:"", abv: "")
