# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
require "open-uri"



puts "Cleaning database now..."
Cocktail.destroy_all
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
 # cocktails

cocktail_array = []

csv_text = File.read(Rails.root.join('lib', 'seeds_db', 'cocktails_seeds.csv'))
csv = CSV.parse(csv_text, :headers => true, :header_converters => :symbol)
csv.each do |row|
  p row
  t = Cocktail.new
  t.name = row[:name]
  t.content = row[:content]

  file = URI.open(row[:photo_url])
  t.photo.attach(io: file, filename: 'picture')
  t.save
  cocktail_array << t
end





# Cocktail.create(
#   name: "Chilcano de Maracuya",

#   content: "Smooth and fresh. Perfect for any season.",
#   photo: "https://res.cloudinary.com/milojascloud/image/upload/v1608162704/misunderstood-whiskey-C-T2lkzqXko-unsplash_kyd6hg.jpg",
# )

# Cocktail.create(
#   name: "Bamboo Cocktail",

#   content: "I love rum and love this cocktail because is a litte bitter. Can be pretty strong!.",
#   photo: "https://res.cloudinary.com/milojascloud/image/upload/v1608162563/ash-edmonds-fsI-_MRsic0-unsplash_m7y2eq.jpg",
# )

# Cocktail.create(
#   name: "Bloody Cherry",

#   content: "A great twist to the classic!.",
#   photo: "https://res.cloudinary.com/milojascloud/image/upload/v1608162655/johann-trasch-b-3uxA93zUc-unsplash_xcs2nk.jpg",
# )




# Cocktail.create(
#   name: "Crazy Screwdriver",
#   content: "More of a boozy dessert than a cocktail.",
#   photo: "https://res.cloudinary.com/milojascloud/image/upload/v1605281641/31y2vw6to9970is9c7dymudmi46m.jpg",
# )
# puts "Done! Created #{Ingredient.count} ingredients. and #{Cocktail.count} cocktails"




# Cocktail.create(
#   name: "Vodka Martini",
#   content: "It’s pretty basic: a shot of chilled vodka mixed with a little dry vermouth.",
#   photo_url: "https://res.cloudinary.com/milojascloud/image/upload/v1608162672/edward-howell-m0Szwm1sEKE-unsplash_iqmbhu.jpg",
# )


# Cocktail.create(
#   name: "Zombie",
#   content: " Might eat your brains out.",
#   photo_url: "https://res.cloudinary.com/milojascloud/image/upload/v1608162563/ash-edmonds-fsI-_MRsic0-unsplash_m7y2eq.jpg",
# )




puts "Done! Created #{Ingredient.count} ingredients. and #{Cocktail.count} cocktails"

# require 'json'
# require 'open-uri'
# Ingredient.destroy_all
# ingredients = JSON.parse(open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)
# # puts ingredients
# ingredients["drinks"].each do |ingredient|
#   Ingredient.create(name: ingredient["strIngredient1"])
# end


