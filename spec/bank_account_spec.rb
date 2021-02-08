require 'bank_account' 

describe Account do
    it 'should return a bank balance of around 0' do 
        account = Account.new
        expect(account.balance).to eq(0)
    end 

    describe 'deposite' do
        it 'should add money to the bank balance' do
            account = Account.new 
            account.deposit(100) 
            expect(account.balance).to eq(100)
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
            expect(account.withdraw(50)).to eq(50)
        end
    end
end