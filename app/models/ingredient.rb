class Ingredient < ApplicationRecord
  has_many :ingredient_meals
  has_many :meals, through: :ingredient_meals
end
