require 'bank_account' 

describe Bank_Account do   

    let(:bank_account) { Bank_Account.new }

    it 'should return a balance' do 
        expect(bank_account.balance).to eq(0)
    end   

    it 'should return a date, criedit, debit, balance' do 
        expect(bank_account.transaction).to eq([["date", "credit", "debit", "balance"]])
    end 

end  

describe Current_Account do 

    let(:current_account) { Current_Account.new } 

    describe 'deposit' do 
        it 'should deposit £100 in to the current account' do  
            current_account.deposit(100)
            expect(current_account.balance).to eq(100)  
            expect(current_account.transaction).to eq([["date", "credit", "debit", "balance"], ["08/02/2021", 100, nil, 100]])
        end  
    end  

    describe 'withdraw' do 
        it 'should withdraw £50 from the count' do 
            current_account.withdraw(50) 
            expect(current_account.balance).to eq(-50) 
            expect(current_account.transaction).to eq([["date", "credit", "debit", "balance"], ["08/02/2021", nil, 50, -50]])
        end 
    end 
end  

describe 'Statment' do 

    let(:statment) { Statment.new }

    describe 'bank_statment' do 
        it 'should return a bank statment' do 
            expect(statment.bank_statment).to eq([["date", "credit", "debit", "balance"]])
        end  

        it 'should return a bank statment' do 
            statment.deposit(100) 
            statment.deposit(200) 
            expect(statment.bank_statment).to eq([["date", "credit", "debit", "balance"], [Time.now.strftime("%d/%m/%Y"), 100, nil, 100], [Time.now.strftime("%d/%m/%Y"), 200, nil, 300]])
        end 
    end  
end 