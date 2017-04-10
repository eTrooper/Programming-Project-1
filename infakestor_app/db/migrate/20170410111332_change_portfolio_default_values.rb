class ChangePortfolioDefaultValues < ActiveRecord::Migration[5.0]
  def change
    change_column :portfolios, :cash, :float, :default => 1000000
    change_column :portfolios, :netWorth, :float, :default => 1000000
  end
end
