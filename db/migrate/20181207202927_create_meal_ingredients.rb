class CreateMealIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_ingredients do |t|
      t.integer :ingredient_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
