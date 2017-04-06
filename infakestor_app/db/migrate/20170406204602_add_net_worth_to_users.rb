class AddNetWorthToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :netWorth, :float
  end
end
