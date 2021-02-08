require 'bank_account' 

describe Account do
    it 'should return a bank balance of around 0' do 
        account = Account.new
        expect(account.balance).to eq(0)
    end
end