class Meal < ApplicationRecord
  belongs_to :user
  has_many :ingredient_meals, dependent: :destroy
  has_many :ingredients, through: :ingredient_meals
end
