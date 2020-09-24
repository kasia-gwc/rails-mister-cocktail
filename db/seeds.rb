# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "json"
require "open-uri"

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all


url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(open(url).read)

ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts 'Seeding cocktails...'


file = URI.open("https://www.sainsburysmagazine.co.uk/uploads/media/1800x1800/06/9526-Pina-colada.jpg?v=1-0")
pina_colada = Cocktail.create!(name: "Piña Colada")
pina_colada.photo.attach(io: file, filename: 'pina_colada.jpg', content_type: 'image/jpg')

file = URI.open("https://media.kaufland.com/images/PPIM/AP_Content_1010/std.lang.all/63/71/Asset_3236371.jpg")
pina_colada = Cocktail.create!(name: "Moscow Mule")
pina_colada.photo.attach(io: file, filename: 'pina_colada.jpg', content_type: 'image/jpg')

file = URI.open("https://noseychef.com/wp-content/uploads/2019/11/IMG_5211123.jpg")
pina_colada = Cocktail.create!(name: "Daquiri")
pina_colada.photo.attach(io: file, filename: 'pina_colada.jpg', content_type: 'image/jpg')

file = URI.open("https://i1.wp.com/www.eatthis.com/wp-content/uploads/2019/03/old-fashioned-cocktail.jpg?fit=1200%2C879&ssl=1")
pina_colada = Cocktail.create!(name: "Old Fashioned")
pina_colada.photo.attach(io: file, filename: 'pina_colada.jpg', content_type: 'image/jpg')

file = URI.open("https://makemeacocktail.com/images/cocktails/8519/gin-and-tonic-with-dill.jpg")
pina_colada = Cocktail.create!(name: "Gin & Tonic")
pina_colada.photo.attach(io: file, filename: 'pina_colada.jpg', content_type: 'image/jpg')


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
