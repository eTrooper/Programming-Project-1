class CreatePortfolios < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
     # t.integer :user_id, :null => false
      t.float  :cash
      t.float  :netWorth
      t.text :stocks_data
      t.timestamps
    end
   # add_column :stocks, :amount, :text
    
    
  end
end
