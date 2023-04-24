class CreateQuantitiesRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :quantities_recipes, :id => false do |t|
      t.integer :quantity_id
      t.integer :recipe_id
      t.timestamps
    end
  end
end
