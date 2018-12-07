class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.integer :user_id
      t.string :name
      t.string :recipe_instructions
      t.string :meal_type

      t.timestamps
    end
  end
end
