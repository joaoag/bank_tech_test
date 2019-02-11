require 'account'

describe 'Account balance' do  
      
  account = Account.new
  
  it 'has a 0 starting balance' do
    expect(account.balance).to eq([0])
  end
  
  it 'balance can be increased with #deposit()' do
    account.deposit(10, "10/10/2020")
    expect(account.display_balance).to eq(10)
  end
  
  it 'balance can be reduced with #withdrawal()' do
    account.deposit(10, "10/10/2020")
    account.withdrawal(10)
    expect(account.display_balance).to eq(10)
  end

end

describe 'Account balance with dates' do  
      
  account = Account.new
  
  it 'records the date of deposits' do
    account.deposit(10, "10/10/2018")
    expect(account.transactions).to eq(["10/10/2018"=>10])
  end

end


