class AddIndexToTransactionsPortfolio < ActiveRecord::Migration[5.0]
  def change
    add_index :transactions, :portfolio_id, unique: true
  end
end
