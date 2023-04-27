class CreateNotesRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes_recipes, :id => false do |t|
      t.integer :recipe_id
      t.integer :note_id
      t.timestamps
    end
  end
end
