 
 currentStockList = [Stock.new(
                :ticker => 'aapl',
                :symbol => StockQuote::Stock.quote('aapl', nil, nil, 'Symbol'),
                :ask => StockQuote::Stock.quote('aapl', nil, nil, 'Ask'),
                :bid => StockQuote::Stock.quote('aapl', nil, nil, 'Bid')),
                Stock.new(
            :ticker => 'tsla',
            :symbol => StockQuote::Stock.quote('tsla', nil, nil, 'Symbol'),
            :ask => StockQuote::Stock.quote('tsla', nil, nil, 'Ask'),
            :bid => StockQuote::Stock.quote('tsla', nil, nil, 'Bid')
            ),
            Stock.new(
            :ticker => 'pep',
            :symbol => StockQuote::Stock.quote('pep', nil, nil, 'Symbol'),
           :ask => StockQuote::Stock.quote('pep', nil, nil, 'Ask'),
            :bid => StockQuote::Stock.quote('pep', nil, nil, 'Bid')
            ),
            Stock.new(
            :ticker => 'wolwf',
            :symbol => StockQuote::Stock.quote('wolwf', nil, nil, 'Symbol'),
            :ask => StockQuote::Stock.quote('wolwf', nil, nil, 'Ask'),
            :bid => StockQuote::Stock.quote('wolwf', nil, nil, 'Bid')
            )]
    
    
    Stock.import currentStockList, :on_duplicate_key_update => [:ask]