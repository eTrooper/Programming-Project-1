class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :ticker
      t.float :ask

      t.timestamps
    end
  end
end
