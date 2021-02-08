require 'bank_account' 

describe Account do
    it 'should return a bank balance of around 0' do 
        account = Account.new
        expect(account.balance).to eq(0)
    end  

    it 'should return an empty array' do
        account = Account.new 
        expect(account.transaction).to eq([])
    end

    describe 'deposite' do
        it 'should add money to the bank balance' do
            account = Account.new 
            account.deposit(100) 
            expect(account.balance).to eq(100)
        end 

        it 'should return a deposite info from transaction' do
            account = Account.new 
            account.deposit(100)
            expect(account.transaction).to eq([[Time.now.strftime("%d/%m/%Y"), 100, nil, 100]])
        end
    end 

    describe 'withdraw' do
        it 'should withdraw money from the account into the negitve' do
            account = Account.new 
            account.withdraw(50) 
            expect(account.balance).to eq(-50)
        end 

        it 'should withdraw money from the account' do
            account = Account.new 
            account.deposit(100) 
            expect(account.withdraw(50)).to eq([["08/02/2021", 100, nil, 100], ["08/02/2021", nil, 50, 50]])
        end 

        it 'should return withdraw information on the transation' do
            account = Account.new  
            account.withdraw(100)
            expect(account.transaction).to eq([[Time.now.strftime("%d/%m/%Y"), nil, 100, -100]])
        end
    end
end