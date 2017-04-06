class AddStockArrayToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :stockArray, :array
  end
end
