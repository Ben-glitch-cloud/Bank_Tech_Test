require 'bank_account' 

describe Account do 

    let( :account ) { Account.new }

    it 'should return a bank balance of around 0' do 
        expect(account.balance).to eq(0)
    end  

    it 'should return an empty array' do
        expect(account.transaction).to eq([["date", "credit", "debit", "balance"]])
    end

    describe 'deposite' do
        it 'should add money to the bank balance' do
            account.deposit(100) 
            expect(account.balance).to eq(100)
        end 

        it 'should return a deposite info from transaction' do
            account.deposit(100)
            expect(account.transaction).to eq([["date", "credit", "debit", "balance"], [Time.now.strftime("%d/%m/%Y"), 100, nil, 100]])
        end
    end 

    describe 'withdraw' do
        it 'should withdraw money from the account into the negitve' do
            account.withdraw(50) 
            expect(account.balance).to eq(-50)
        end 

        it 'should withdraw money from the account' do
            account.deposit(100) 
            expect(account.withdraw(50)).to eq(50)
        end 

        it 'should return withdraw information on the transation' do
            account.withdraw(100)
            expect(account.transaction).to eq([["date", "credit", "debit", "balance"], [Time.now.strftime("%d/%m/%Y"), nil, 100, -100]])
        end
    end 

    describe 'bank_statment' do 
        it 'should return labels for date, credit, debit, balance' do 
            expect(account.bank_statment).to eq([["date", "credit", "debit", "balance"]])
        end 
    end
end