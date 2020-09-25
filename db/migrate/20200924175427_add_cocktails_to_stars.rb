class AddCocktailsToStars < ActiveRecord::Migration[6.0]
  def change
    add_reference :stars, :cocktails, foreign_key: true
  end
end
