require 'account'

describe 'Account' do  
  account = Account.new
    it 'has a 0 starting balance' do
      expect(account.balance).to eq(0)
    end
    it 'balance can be increased with #deposit' do
      account.deposit(10)
      expect(account.balance).to eq(10)
    end
end


