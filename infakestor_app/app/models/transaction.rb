class Transaction < ApplicationRecord
    
    has_many :stocks
    has_many :portfolio
    
end
