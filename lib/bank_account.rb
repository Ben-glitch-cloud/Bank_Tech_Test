class Account 

    attr_accessor :balance, :transaction
    
    def initialize
        
        @balance = 0   

        @transaction = []

    end 

    def deposit(money)
        
        @balance += money  
        @transaction << [Time.now.strftime("%d/%m/%Y"), money,  nil,  @balance] 

    end 

    def withdraw(money)
        
        @balance -= money 
        @transaction << [Time.now.strftime("%d/%m/%Y"),  nil, money, @balance] 

    end 
 
end 
