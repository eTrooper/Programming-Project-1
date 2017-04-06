User.create!(name:  "Example User",
             email: "totalNewEma2il@railstutorial2.org",
             password:              "foobar",
             password_confirmation: "foobar",
             
             money: 1000000,
             netWorth: 1000000
)

99.times do |n|
  name  = Faker::Name.name
  email = "veryNewExample2#{n+1}@exampleEmail2.org"
  password = "password"
 

  
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               money: 1000000,
               netWorth: 1000000)
end



        tempStock = StockQuote::Stock.quote("aapl")
        
  
        Stock.create :ticker => "aapl",
                :symbol => tempStock.symbol,
                :ask => tempStock.ask,
                :bid => tempStock.bid
                
        tempStock.ask.inspect
                
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
                               
       