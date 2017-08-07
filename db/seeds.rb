# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


jacobs = Location.create
jacobs.latitude = 37.876094
jacobs.longitude = -122.258851
jacobs.name = "JacobsHall"
jacobs.save

yalis = Location.create
yalis.latitude = 37.8734167
yalis.longitude = -122.2686006
yalis.name = "Yali'sCafe"
yalis.save

wozniak = Location.create
wozniak.name = "WozniakLounge"
wozniak.latitude = 37.8758251
wozniak.longitude = -122.2588599
wozniak.save

stebbins = Location.create
stebbins.name = "StebbinsHall"
stebbins.latitude = 37.8761331
stebbins.longitude = -122.2592569
stebbins.save

va = Location.create
va.latitude = 37.875543
va.longitude = -122.258959
va.name = "V&ACafe"
va.save

ife = Location.create
ife.latitude = 37.8687289
ife.longitude = -122.2601618
ife.name = "Indian Flavors Express"
ife.save
    
mlk = Location.create
mlk.latitude = 37.869015
mlk.longitude = -122.259918
mlk.name = "MLK Student Union"
mlk.save


alice = Location.create
alice.latitude = 37.865126
alice.longitude = -122.257159
alice.name = "Alice's House"
alice.save