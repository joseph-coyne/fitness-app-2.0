class Meal < ApplicationRecord

  belongs_to :user
  has_many :meal_ingredient, dependent: :destroy
  has_many :ingredients, through: :meal_ingredient

  validates :name, presence: true
  validates :recipe_instructions, presence: true, length: {maximum: 200}

  
  def nutrients
    total_protein = 0
    total_carbohydrates = 0
    total_fat = 0
    total_magnesium = 0
    total_zinc = 0
    total_iron = 0
    total_folate = 0
    total_vitamin_d = 0
    
    ingredients.each do |ingredient|
      # use the ingredient model method protein to get a sum
      total_protein += ingredient.nutrients[:protein]
      total_carbohydrates += ingredient.nutrients[:carbohydrates]
      total_fat += ingredient.nutrients[:fat]
      total_magnesium += ingredient.nutrients[:magnesium]
      total_zinc += ingredient.nutrients[:zinc]
      total_iron += ingredient.nutrients[:iron]
      total_folate += ingredient.nutrients[:folate]
      total_vitamin_d += ingredient.nutrients[:vitamin_d]
    end
    nutrients_hash = {
      protein: total_protein,
      carbohydrates: total_carbohydrates,
      fat: total_fat,
      magnesium: total_magnesium,
      zinc: total_zinc,
      iron: total_iron,
      folate: total_folate,
      vitamin_d: total_vitamin_d

    }
    return nutrients_hash
  end
  
end
