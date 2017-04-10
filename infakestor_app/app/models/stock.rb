class Stock < ApplicationRecord
    belongs_to transactions
    validates_presence_of :name, :ticker, :ask
    
    def self.ordered
        where(deleted_at: nil).order(name: :asc)
    end
    
    
    def stock_buy_price
        return ask
    end
    
end
