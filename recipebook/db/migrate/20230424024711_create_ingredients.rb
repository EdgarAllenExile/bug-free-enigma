class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.text :title
      t.integer :quantity_id
      t.text :category
      t.timestamps
    end
  end
end
