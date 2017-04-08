class Stock < ApplicationRecord
    belongs_to portfolio
    validates_presence_of :name, :ticker, :ask
    
    
    
end
