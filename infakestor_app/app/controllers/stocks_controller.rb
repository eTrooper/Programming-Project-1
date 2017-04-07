class StocksController < ApplicationController
  def index
     @stocks = Stock.paginate(page: params[:page])  
  end
    def show
   @stock = Stock.find(params[:id])
  end
end
