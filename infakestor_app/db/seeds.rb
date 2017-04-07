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

csv.each do |row|
        s = Stock.new
        suffixASX = [row, 'AX'].join('.')
        tempQuote = StockQuote::Stock.quote(suffixASX, nil, nil, ['Symbol','Name','Ask'])
        
        s.name = tempQuote.Name
        s.ticker = row
        s.ask = tempQuote.Ask
    if tempQuote.success?
        s.save
        puts "#{s.name}, #{s.ticker}, #{s.ask} saved"        
    end

end
        
        

