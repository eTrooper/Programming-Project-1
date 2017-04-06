class AddMoneyToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :money, :float
  end
end
