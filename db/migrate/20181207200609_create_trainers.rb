class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.date :birthdate
      t.string :gender
      t.string :avatar
      t.text :bio
      t.integer :rating
      t.string :video
      t.boolean :nutritionist

      t.timestamps
    end
  end
end
