class AddsLocationToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :location, :string  	
  end
end
