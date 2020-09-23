# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'json'
require 'open-uri'

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all


url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(open(url).read)

ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts 'Seeding cocktails...'


daiquiri = Cocktail.create!(name: "Daiquiri")


file = URI.open("https://media.kaufland.com/images/PPIM/AP_Content_1010/std.lang.all/63/71/Asset_3236371.jpg")
daiquiri.photo.attach(io: file, filename: 'daiquiri.jpg', content_type: 'image/jpg')

#article = Article.new(title: 'NES', body: "A great console")
#article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


#Cocktail.create(
## name: "Daquiri",
# photo: open('https://media.kaufland.com/images/PPIM/AP_Content_1010/std.lang.all/63/71/Asset_3236371.jpg')
# )
#Cocktail.create(
 # name: "Moscow Mule",
  #photo: open('https://res.cloudinary.com/kasia-gwc/image/upload/v1600698764/moscow_mule.jpg'),
  #)
#Cocktail.create(name: "Gin & Tonic")
#Cocktail.create(name: "Mojito")
#Cocktail.create(name: "Pisco Sour")
#Cocktail.create(name: "Dark & Stormy")
#Cocktail.create(name: "Piña Colada")
#Cocktail.create(name: "Margerita")
#Cocktail.create(name: "Sangria")

puts 'Seeding ingredients'


#Dose.create!({description: "A bit of", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
#Dose.create!({description: "A splash of", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
#Dose.create!({description: "One part", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
#Dose.create!({description: "Two parts", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
