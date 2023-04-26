class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.text :title, :default => "Not Specified"
      t.integer :user_id
      t.text :category, :default => "Not Specified"
      t.text :cusine, :default => "Not Specified"
      t.text :dietary, :default => "Not Specified"
      t.integer :cook_time, :default => 10
      t.integer :difficulty, :default => 1
      t.integer :serves, :default => 1
      t.text :image
      t.timestamps
    end
  end
end
