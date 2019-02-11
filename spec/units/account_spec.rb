require 'account'

describe 'Account balance' do  
      
  account = Account.new
   
    it 'starts at 0' do
      expect(account.balance).to eq([0])
    end
    
    it 'can be increased with #deposit()' do
      account.deposit(10, "10/10/2020")
      expect(account.return_balance).to eq(10)
    end
    
    it 'can be reduced with #withdrawal()' do
      account.withdrawal(5, "20/10/2020")
      expect(account.return_balance).to eq(5)
    end
  
end

describe 'Account dates' do  
      
  account = Account.new
  
  it 'are recorded at deposit transactions' do
    account.deposit(10, "10/10/2018")
    expect(account.transactions[0]).to eq("10/10/2018"=>10)
  end

  it 'are recorded at withdrawal transactions' do
    account.deposit(10, "10/10/2018")
    account.withdrawal(10, "20/10/2018")
    expect(account.transactions[-1]).to eq("20/10/2018"=>-10)
  end

end


