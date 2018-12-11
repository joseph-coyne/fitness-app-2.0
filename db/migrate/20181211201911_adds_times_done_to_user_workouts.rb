class AddsTimesDoneToUserWorkouts < ActiveRecord::Migration[5.2]
  def change
  	add_column :user_workouts, :times_done, :integer
  end
end
