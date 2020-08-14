require 'json'
require 'open-uri'
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
user = JSON.parse(user_serialized)
user["drinks"].each do |ingredient|
  ingredient = ingredient["strIngredient1"]
  Ingredient.create(name: ingredient)
end


Cocktail.create(name: "Old Fashioned")
Cocktail.create(name: "Bloody Marry")
Cocktail.create(name: "Whisky Sours")
Cocktail.create(name: "Mojito")
Cocktail.create(name: "Daiquiri")
