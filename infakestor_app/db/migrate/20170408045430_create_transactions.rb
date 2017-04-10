class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.boolean :status
      t.integer :portfolio_id, :null => false
      t.integer :stock_id, :null => false
      t.float :stock_buy_price
      t.integer :volume
      t.string :type
      t.timestamps
    end
  end
end
