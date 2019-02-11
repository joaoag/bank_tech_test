require 'account'

describe 'Account' do  
    it 'has a 0 starting balance' do
      expect(account.balance).to eq(0)
    end
end


