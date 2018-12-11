class AddsRatingToAppointments < ActiveRecord::Migration[5.2]
  def change
  	add_column :appointments, :rating, :integer
  end
end
