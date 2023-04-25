class CreateRecipesSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes_steps do |t|
      t.integer :recipe_id
      t.integer :step_id
      t.timestamps
    end
  end
end
