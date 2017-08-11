# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

list_serialized = open(url).read

list = JSON.parse(list_serialized)

list["drinks"].each do |hash|
  Ingredient.create(name: hash["strIngredient1"])
end

Cocktail.destroy_all

url = "https://static.pexels.com/photos/298719/pexels-photo-298719.jpeg"
cocktail = Cocktail.new(name: 'Mojito')
cocktail.save!
cocktail.photo_url = url

url = "https://static.pexels.com/photos/110472/pexels-photo-110472.jpeg"
cocktail = Cocktail.new(name: 'Oceanique')
cocktail.save!
cocktail.photo_url = url

url = "https://static.pexels.com/photos/109275/pexels-photo-109275.jpeg"
cocktail = Cocktail.new(name: 'Tropical')
cocktail.save!
cocktail.photo_url = url

url = "https://static.pexels.com/photos/5180/alcohol-party-cocktail-drink.jpg"
cocktail = Cocktail.new(name: 'Extreme')
cocktail.save!
cocktail.photo_url = url

url = "https://static.pexels.com/photos/274202/pexels-photo-274202.jpeg"
cocktail = Cocktail.new(name: 'Ice')
cocktail.save!
cocktail.photo_url = url

url = "https://static.pexels.com/photos/162915/drink-fruit-water-detox-detox-water-162915.jpeg"
cocktail = Cocktail.new(name: 'Méditerranéen')
cocktail.save!
cocktail.photo_url = url
