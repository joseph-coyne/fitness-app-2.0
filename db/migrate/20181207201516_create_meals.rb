class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.interger :user_id
      t.string :recipe_name
      t.string :recipe_ingredients
      t.string :meal_type
      t.string :recipe_instructions

      t.timestamps
    end
  end
end
