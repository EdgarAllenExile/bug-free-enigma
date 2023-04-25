class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.text :title
      t.integer :user_id
      t.text :category
      t.integer :intensity
      t.integer :serves
      t.text :image
      t.timestamps
    end
  end
end
