class CreateStocks < ActiveRecord::Migration[5.0]
  def change
    create_table :stocks do |t|
       t.column :ticker, :string, :limit => 32, :null => false
      t.column :symbol, :string
      t.column :ask, :float
    t.column :bid, :float
      t.timestamps
    end
  end
end
