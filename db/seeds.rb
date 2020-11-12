# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "Cleaning database now..."
Ingredient.destroy_all
puts "Database clean ✅"



Ingredient.create(name: "Lemon")
Ingredient.create(name: "Crushed Ice")
Ingredient.create(name: "Ice Cubes")
Ingredient.create(name: "Mint Leaves")
Ingredient.create(name: "Scotch")
Ingredient.create(name: "Light Rum")
Ingredient.create(name: "Dark Rum")
Ingredient.create(name: "Cola")
Ingredient.create(name: "Pisco")
Ingredient.create(name: "Gin")
Ingredient.create(name: "Wine")
Ingredient.create(name: "Sprite")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Cachaca")
Ingredient.create(name: "Coffee Shot")
Ingredient.create(name: "Sugar")
Ingredient.create(name: "Angostura")
Ingredient.create(name: "Champagne")
Ingredient.create(name: "Cranberry Juice")
Ingredient.create(name: "Orange Juice")
Ingredient.create(name: "Milk")








puts "Done! Created #{Ingredient.count} ingredients."



