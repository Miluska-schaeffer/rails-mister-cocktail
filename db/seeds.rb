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

Ingredient.create(name: "Angostura")
Ingredient.create(name: "Beer")
Ingredient.create(name: "Black Beer")
Ingredient.create(name: "Brown Sugar")
Ingredient.create(name: "Cachaca")
Ingredient.create(name: "Champagne")
Ingredient.create(name: "Coffee")
Ingredient.create(name: "Cola")
Ingredient.create(name: "Cranberry Juice")
Ingredient.create(name: "Crushed Ice")
Ingredient.create(name: "Dark Rum")
Ingredient.create(name: "Egg")
Ingredient.create(name: "Gin")
Ingredient.create(name: "Ice Cubes")
Ingredient.create(name: "Lemon")
Ingredient.create(name: "Light Rum")
Ingredient.create(name: "Maracuya Juice")
Ingredient.create(name: "Milk")
Ingredient.create(name: "Mint Leaves")
Ingredient.create(name: "Orange Juice")
Ingredient.create(name: "Pisco")
Ingredient.create(name: "Scotch")
Ingredient.create(name: "Sprite")
Ingredient.create(name: "Vodka")
Ingredient.create(name: "Wine")
Ingredient.create(name: "White Wine")

puts "Done! Created #{Ingredient.count} ingredients."

# require 'json'
# require 'open-uri'
# Ingredient.destroy_all
# ingredients = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)
# # puts ingredients
# ingredients["drinks"].each do |ingredient|
#   Ingredient.create(name: ingredient["strIngredient1"])
# end
