class StockList < ActiveRecord::Migration[5.0]
   def self.up
   create_table :stocks do |t|
      t.column :ticker, :string, :limit => 32, :null => false
     t.column :symbol, :string
     t.column :ask, :float
     t.column :bid, :float
     t.timestamps
  end
  
  
        Stock.create :ticker => 'aapl',
                :symbol => StockQuote::Stock.quote('aapl', nil, nil, 'Symbol'),
                :ask => StockQuote::Stock.quote('aapl', nil, nil, 'Ask'),
                :bid => StockQuote::Stock.quote('aapl', nil, nil, 'Bid')
                
        Stock.create :ticker => 'tsla',
                :symbol => StockQuote::Stock.quote('tsla', nil, nil, 'Symbol'),
                :ask => StockQuote::Stock.quote('tsla', nil, nil, 'Ask'),
                :bid => StockQuote::Stock.quote('tsla', nil, nil, 'Bid')
                
        Stock.create :ticker => 'pep',
                :symbol => StockQuote::Stock.quote('pep', nil, nil, 'Symbol'),
                :ask => StockQuote::Stock.quote('pep', nil, nil, 'Ask'),
                :bid => StockQuote::Stock.quote('pep', nil, nil, 'Bid')
                
        Stock.create :ticker => 'wolwf',
                :symbol => StockQuote::Stock.quote('wolwf', nil, nil, 'Symbol'),
                :ask => StockQuote::Stock.quote('wolwf', nil, nil, 'Ask'),
                :bid => StockQuote::Stock.quote('wolwf', nil, nil, 'Bid')
                
  
  
  end
  
  def self.down
    drop_table :stocks
  end
  
end


