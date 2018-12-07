class CreateAppointmentItems < ActiveRecord::Migration[5.2]
  def change
    create_table :appointment_items do |t|
      t.integer :item_id
      t.integer :appointment_id

      t.timestamps
    end
  end
end
