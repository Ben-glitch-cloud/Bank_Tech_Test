class Bank_Account  

    attr_accessor :balance, :transaction

    def initialize 

        @balance = 0 

        @transaction = [] 

    end 
    
end    
 
class Current_Account < Bank_Account     

    attr_accessor :balance, :transaction
    
    def initialize

        super   

    end  

    def deposit(money)
        
        @balance += money  
        @transaction << [Time.now.strftime("%d/%m/%Y"), money,  nil,  @balance]  
        return @balance

    end   

    def withdraw(money)
        
        if @balance < money 
            return "--Insufficient Funds--"
        else 
            @balance -= money 
            @transaction << [Time.now.strftime("%d/%m/%Y"),  nil, money, @balance]  
        end 
    end   
    
    def current_account_history 

        puts ["date", "credit", "debit", "balance"].join(" || ")
        @transaction.each do |tra| 
            puts tra.join(" || ")
        end 

    end
    
end     






 





