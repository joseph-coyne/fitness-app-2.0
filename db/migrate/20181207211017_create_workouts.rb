class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.time :time
      t.string :image
      t.text :description
      t.string :level
      t.string :category
      t.string :video

      t.timestamps
    end
  end
end
