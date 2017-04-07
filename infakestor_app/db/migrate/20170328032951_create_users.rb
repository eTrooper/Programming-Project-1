class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.float  :cash
      t.float  :netWorth
      t.string :stockArray, array: true
      
      t.timestamps
    end
  end
end
