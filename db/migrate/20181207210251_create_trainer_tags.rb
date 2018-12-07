class CreateTrainerTags < ActiveRecord::Migration[5.2]
  def change
    create_table :trainer_tags do |t|
      t.integer :tag_id
      t.integer :trainer_id

      t.timestamps
    end
  end
end
