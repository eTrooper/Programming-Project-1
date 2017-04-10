class ChangePortfolioDefaultValues < ActiveRecord::Migration[5.0]
  def change
    change_column :transactions, :status, :boolean, :default => false
  end
end
