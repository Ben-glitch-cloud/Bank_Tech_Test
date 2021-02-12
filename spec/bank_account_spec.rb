require 'bank_account' 

describe CurrentAccount do
    
   let(:currentaccount) { CurrentAccount.new } 

   it 'balance should be set to 0' do
       expect(currentaccount.balance).to eq(0)
   end 

   it 'tractions should be set to an empty array' do
       expect(currentaccount.transaction).to eq([])
   end 

   describe 'deposit' do
        it 'should add money into the account balance' do
            currentaccount.deposit(100) 
            expect(currentaccount.balance).to eq(100)
        end
   end 

   describe 'withdraw' do
        it 'should take money from the balance' do
            currentaccount.deposit(100) 
            expect(currentaccount.withdraw(30)).to eq(70)
        end  

        it 'should return an error if there inadequate funds' do
            expect(currentaccount.withdraw(120)).to eq("--Insufficient Funds--")
        end
   end  

   describe 'print_statments' do 
        it 'should show a bank statment history' do
            currentaccount.deposit(100) 
            currentaccount.withdraw(20) 
            currentaccount.deposit(120)  
            expect( currentaccount.print_statments).to eq([["12/02/2021", 100, nil, 100], ["12/02/2021", nil, 20, 80], ["12/02/2021", 120, nil, 200]])
        end
   end 

end 

describe AccountHistory do 

    let(:accounthistory) { AccountHistory.new }
    
    describe 'print_account_statment' do
        it 'should show a bank statment format' do
            expect( accounthistory.print_account_statment([["12/02/2021", 120, nil, 200]]) ).to eq([["12/02/2021", 120, nil, 200]])
        end
    end

end