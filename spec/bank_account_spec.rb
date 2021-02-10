require 'bank_account' 

describe Bank_Account do   

    let(:bank_account) { Bank_Account.new }

    it 'should return a balance' do 
        expect(bank_account.balance).to eq(0)
    end   

    it 'should return a date, criedit, debit, balance' do 
        expect(bank_account.transaction).to eq([])
    end 

end  

describe Current_Account do 

    let(:current_account) { Current_Account.new } 

    describe 'deposit' do 
        it 'it should deposite money in to the account' do 
            expect(current_account.deposit(100)).to eq(100) 
            expect(current_account.balance).to eq(100)
        end 
    end  

    describe 'withdraw' do 
        it 'it should withdraw money from the count' do  
            current_account.deposit(100) 
            current_account.withdraw(50)
            expect(current_account.balance).to eq(50)
        end  

        it 'should produce an error if there isent enough money in the account' do  
            expect(current_account.withdraw(50)).to eq("--Insufficient Funds--")
        end  
    end   

    describe 'current_account_history' do 
        it 'should return a bank statment history' do  
            current_account.deposit(50) 
            current_account.withdraw(25)
            expect(current_account.current_account_history).to eq([[Time.now.strftime("%d/%m/%Y"), 50, nil, 50], [Time.now.strftime("%d/%m/%Y"), nil, 25, 25]])
        end  

        it 'history should have a length of two' do 
            current_account.deposit(100) 
            current_account.withdraw(30) 
            expect(current_account.current_account_history.length).to eq(2)
        end 
    end 

end  
