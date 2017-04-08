class Portfolio < ApplicationRecord
    belongs_to user
    has_many stocks
    has_many transactions
    attr_accessible :user_id, :cash, :netWorth, :stock_data
    
    #this allows us to save the stock data in a single column
    serialize :stock_data
    
    
    
    
end
