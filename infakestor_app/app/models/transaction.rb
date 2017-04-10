class Transaction < ApplicationRecord
    
    has_many :stocks
    has_many :portfolio
    
    attr_accessible :status, :portfolio_id, :stock_id, :stock_buy_price, :volume, :type
    
    validates :status, :portfolio_id, :stock_id :presence => true
    validates :volume, presence: true, numericality: { only_integer: true, greater_than: 0 }
    validate :stock_present
    validate :portfolio_present



    def stock_buy_price
        stock_buy_price = @stock.stock_buy_price
    end
    
    
    
    
    private
  def stock_present
    if stock_id.nil?
      errors.add(:stock_id, "is not valid stock.")
    end
  end

  def portfolio_present
    if portfolio_id.nil?
      errors.add(:portfolio_id, "is not a valid portfolio.")
    end
  end
    
end
