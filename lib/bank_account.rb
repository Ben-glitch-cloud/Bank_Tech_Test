  
class CurrentAccount     

    attr_accessor :balance, :transaction
    
    def initialize

        @balance = 0 

        @transaction = [] 

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
            return @balance
        end  

    end    

    def print_statments

        AccountHistory.new.print_account_statment(@transaction) 

    end 
    
end     

class AccountHistory

    def print_account_statment(transactions)
        puts ["date", "credit", "debit", "balance"].join(" || ")
        transactions.each { |tra| puts tra.join(" || ") }
    end  

end 






 





