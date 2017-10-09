class Recipe < ApplicationRecord
  belongs_to :food_category
  has_many :ingredients
  has_many :food_items, through: :ingredients
  has_many :directions
end
