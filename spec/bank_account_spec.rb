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
end