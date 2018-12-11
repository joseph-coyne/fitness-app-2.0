class AddInfoToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :info, :string
  end
end
