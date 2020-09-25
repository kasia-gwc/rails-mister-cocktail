class Cocktail < ApplicationRecord
  has_one_attached :photo
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_many :stars

  def average_stars
    @stars = self.stars
    if @stars.count != 0
      sum = @stars.inject(0) { |sum, star| sum + star.number }
      @average = sum / @stars.length
    else
      0
    end
  end
end
