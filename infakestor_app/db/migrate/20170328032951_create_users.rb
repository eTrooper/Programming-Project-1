class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    drop_table :users
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :stockArray, array: true, default: []
      t.index ["email"], name: "index_users_on_email", unique: true
      t.timestamps
    end
  end
end
