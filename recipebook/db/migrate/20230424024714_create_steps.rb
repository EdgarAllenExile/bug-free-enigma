class CreateSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.integer :step_no
      t.text :process, :default => "Not Specified"
      t.timestamps
    end
  end
end
