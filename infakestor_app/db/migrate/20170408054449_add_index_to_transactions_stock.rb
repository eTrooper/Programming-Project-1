class AddIndexToTransactionsStock < ActiveRecord::Migration[5.0]
  def change
    add_index :transactions, :stock_id, unique: true
  end
end
