class AddIndexToUsersPortfolio < ActiveRecord::Migration[5.0]
  def change
    add_index :users, :portfolio_id, unique: true
  end
end
