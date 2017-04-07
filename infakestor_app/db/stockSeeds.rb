
require 'csv'
csv_text = File.read(Rails.root.join('db', 'seeds', 'Tickers.csv'))
csv = CSV.parse(csv_text, :headers => false, :encoding => 'ISO-8859-1')



csv.each do |row|
        s = Stock.new
        suffixASX = [row, 'AX'].join('.')
        tempQuote = StockQuote::Stock.quote(suffixASX, nil, nil, ['Symbol','Name','Ask'])
        
        s.name = tempQuote.Name
        s.ticker = tempQuote.Symbol
        s.ask = tempQuote.Ask
    
        s.save
        puts "#{s.name}, #{s.ticker}, #{s.ask} saved"
end
        
        

