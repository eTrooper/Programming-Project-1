class Stocks < ActiveRecord::Migration[5.0]
  def self.up
      drop_table :stocks
   create_table :stocks do |t|
      t.column :ticker, :string, :limit => 32, :null => false
     t.column :symbol, :string
     t.column :ask, :float
     t.column :bid, :float
     t.timestamps
  end
  
  
        tempStock = StockQuote::Stock.quote("aapl")
        
  
        Stock.create :ticker => "aapl",
                :symbol => tempStock.symbol,
                :ask => tempStock.ask,
                :bid => tempStock.bid
                
        tempStock = StockQuote::Stock.quote("tsla")
                Stock.create :ticker => "tsla",
                :symbol => tempStock.symbol,
                :ask => tempStock.ask,
                :bid => tempStock.bid
                
        tempStock = StockQuote::Stock.quote("pep")  
        Stock.create :ticker => "pep",
                :symbol => tempStock.symbol,
                :ask => tempStock.ask,
                :bid => tempStock.bid     
                
        tempStock = StockQuote::Stock.quote("wolwf")  
        Stock.create :ticker => "wolwf",
                :symbol => tempStock.symbol,
                :ask => tempStock.ask,
                :bid => tempStock.bid                      
                               
       
                
                
 
  
  
  end
  
  def self.down
    drop_table :stocks
  end
  
end
