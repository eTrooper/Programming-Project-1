class Stock < ApplicationRecord
    belongs_to transactions
    validates_presence_of :name, :ticker, :ask
    
    def stock_buy_price
        return ask
    end
    
end
