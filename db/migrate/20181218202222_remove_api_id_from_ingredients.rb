class RemoveApiIdFromIngredients < ActiveRecord::Migration[5.2]
  def change
    remove_column :ingredients, :nutritionix_api_id, :string
  end
end
