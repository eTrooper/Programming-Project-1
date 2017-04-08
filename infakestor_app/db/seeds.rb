require 'csv'

#placeholder used for cash and netWorth calculations
cashNetWorth = 1000000

csv_text = File.read(Rails.root.join('db', 'seeds', 'Tickers.csv'))
csv = CSV.parse(csv_text, :headers => false, :encoding => 'ISO-8859-1')

User.create!(name:  "Example User",
            email: "example@railstutorial.org",
            password:              "foobar",
            password_confirmation: "foobar",
            cash: cashNetWorth,
            netWorth: cashNetWorth)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password,
              cash: cashNetWorth,
              netWorth: cashNetWorth)
end

csv.each do |row|
        s = Stock.new
        suffixASX = [row, 'AX'].join('.')
        tempQuote = StockQuote::Stock.quote(suffixASX, nil, nil, ['Symbol','Name','Ask'])
        
        s.name = tempQuote.Name
        s.ticker = tempQuote.Symbol
        s.ask = tempQuote.Ask
    if tempQuote.success?
        s.save
        puts "#{s.name}, #{s.ticker}, #{s.ask} saved"        
    end

end
        
        

