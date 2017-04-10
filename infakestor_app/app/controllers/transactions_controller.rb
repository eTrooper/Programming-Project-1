class TransactionsController < ApplicationController
    
    
    
    
    
    
    
    private
  def transaction_params
    params.require(:stock_id).permit(:volume, :stock_buy_price)
  end
end
