class Transaction < ApplicationRecord
    
    belongs_to :stocks
    belongs_to :portfolio
    
end
