class Account 

    attr_accessor :balance
    
    def initialize
        
        @balance = 0

    end 

    def deposit(money)
        
        @balance += money

    end

end