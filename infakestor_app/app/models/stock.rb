class Stock < ApplicationRecord
    belongs_to transactions
    validates_presence_of :name, :ticker, :ask
    
    
    
end
