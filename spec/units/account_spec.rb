require 'account'

describe 'Account balance' do  
      
  account = Account.new
  
  it 'has a 0 starting balance' do
    expect(account.balance).to eq(0)
  end
  
  it 'balance can be increased with #deposit()' do
    account.deposit(10)
    expect(account.balance).to eq(10)
  end
  
  it 'balance can be reduced with #withdrawal()' do
    account.deposit(10)
    account.withdrawal(10)
    expect(account.balance).to eq(10)
  end

end

describe 'Account balance with dates' do  
      
  account = Account.new
  
  it 'records the date of deposits' do
    account.deposit(10, Date.new)
    expect(account.balance[0]).to eq(Date.new)
  end

end


