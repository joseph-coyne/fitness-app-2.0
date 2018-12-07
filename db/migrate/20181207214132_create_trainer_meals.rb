class CreateTrainerMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :trainer_meals do |t|
      t.integer :user_id
      t.integer :meal_id
      t.integer :trainer_id

      t.timestamps
    end
  end
end
