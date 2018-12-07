class CreateTrainerWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :trainer_workouts do |t|
      t.integer :trainer_id
      t.integer :workout_id
      t.integer :user_id

      t.timestamps
    end
  end
end
