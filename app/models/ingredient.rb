class Ingredient < ApplicationRecord
  has_many :ingredient_meals
  has_many :meals, through: :ingredient_meals

  def nutrients
    # use api id to retrieve nutrients for this ingredient
    nutrients = HTTP.get("https://api.nutritionix.com/v1_1/item?id=#{nutritionix_api_id}&appId=#{ENV['API_ID']}&appKey=#{ENV['API_KEY']}").parse
    # parsing through to get protein
    nutrients_hash = {
      protein: nutrients["nf_protein"].to_f, 
      carbohydrates: nutrients["nf_total_carbohydrate"].to_f,
      fat: nutrients["nf_total_fat"].to_f,
      magnesium: nutrients["nf_magnesium_dv"].to_f,
      zinc: nutrients["nf_zinc_dv"].to_f,
      iron: nutrients["nf_iron_dv"].to_f,
      folate: nutrients["nf_folate_dv"].to_f,
      vitamin_d: nutrients["nf_vitamin_d_dv"].to_f
    }
    return nutrients_hash
  end
  
end
