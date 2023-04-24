class CreateIngredientsQuantities < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients_quantities, :id => false do |t|
      t.integer :ingredient_id
      t.integer :quantity_id
      t.timestamps
    end
  end
end
