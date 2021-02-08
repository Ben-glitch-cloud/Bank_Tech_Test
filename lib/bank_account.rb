class Account 

    attr_accessor :balance, :transaction
    
    def initialize
        
        @balance = 0   

        @transaction = [["date", "credit", "debit", "balance"]]

    end 

    def deposit(money)
        
        @balance += money  
        @transaction << [Time.now.strftime("%d/%m/%Y"), money,  nil,  @balance]  
        return @balance

    end  

    def withdraw(money)
        
        @balance -= money 
        @transaction << [Time.now.strftime("%d/%m/%Y"),  nil, money, @balance]  
        return @balance

    end  

    def bank_statment 
        @transaction.each do |tra|
            puts tra.join(" || ")
        end
    end
 
end 
