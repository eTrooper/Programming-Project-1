class StockController < ApplicationController


    
    
    
    def update

    end
    
    
    
    
    def list
        @stocks = Stock.all
    end
    
    def show
        @stocks = Stock.find(params[:id])
    end
    
    def new
        @stocks = Stock.new
    end
    
    def stock_params
     params.require(:stocks).permit(:ticker, :symbol, :ask, :bid)
    end
end
