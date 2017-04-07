require 'csv'
csv_text = File.read(Rails.root.join('db', 'seeds', 'Tickers.csv'))
csv = CSV.parse(csv_text, :headers => false, :encoding => 'ISO-8859-1')

User.create!(name:  "Example User",
            email: "example@railstutorial.org",
            password:              "foobar",
            password_confirmation: "foobar",
            cash: 1000000,
            netWorth: 1000000)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              cash: 1000000,
              netWorth: 1000000)
end

i = 0
count = 0
tempTickers = ''

csv.each do |row|
        if i>=300 || csv.length - 1 == count
            
            tempQuote = StockQuote::Stock.quote(tempTickers, nil, nil, ['Symbol','Name','Ask'])
            
            tempQuote.each do |quote|
            s = Stock.new
            s.name = quote.Name
            s.ticker = quote.Symbol
            s.ask = quote.Ask
                if quote.success?
                    s.save
                    puts "#{s.name}, #{s.ticker}, #{s.ask} saved" 
                end
                
            end
            
                
                
            count+=1    
            i=0
            tempTickers = ''
        
        else
            suffixASX = [row, 'AX'].join('.')
            tempTickers = [tempTickers, suffixASX].join(',')
            i+=1
            count+=1
        end
        
        
        
        
            
              
    end

        

