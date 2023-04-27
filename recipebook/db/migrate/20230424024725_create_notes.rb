class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.text :note_text
      t.timestamps
    end
  end
end
