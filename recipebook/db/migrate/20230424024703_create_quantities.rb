class CreateQuantities < ActiveRecord::Migration[7.0]
  def change
    create_table :quantities do |t|
      t.text :name
      t.integer :ingredient_id
      t.timestamps
    end
  end
end
