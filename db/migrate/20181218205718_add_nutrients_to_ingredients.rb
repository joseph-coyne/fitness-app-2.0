class AddNutrientsToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :protein, :decimal, :precision => 5, :scale => 2
    add_column :ingredients, :carbohydrates, :decimal, :precision => 5, :scale => 2
    add_column :ingredients, :fat, :decimal, :precision => 5, :scale => 2
    add_column :ingredients, :magnesium, :decimal, :precision => 5, :scale => 2
    add_column :ingredients, :iron, :decimal, :precision => 5, :scale => 2
    add_column :ingredients, :zinc, :decimal, :precision => 5, :scale => 2
    add_column :ingredients, :folate, :decimal, :precision => 5, :scale => 2
    add_column :ingredients, :vitamin_d, :decimal, :precision => 5, :scale => 2

  end
end
