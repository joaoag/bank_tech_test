require 'account'

describe 'Account' do  
  account = Account.new
    it 'has a 0 starting balance' do
      expect(account.balance).to eq([0])
    end
end


