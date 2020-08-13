class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, :description, presence: true, uniqueness: { scope: :ingredient }
end
