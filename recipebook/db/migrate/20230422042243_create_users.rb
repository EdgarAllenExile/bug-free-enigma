class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.string "password_digest"
      t.boolean "admin", default: false
      t.timestamps
    end
  end
end
