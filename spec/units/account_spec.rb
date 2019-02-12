require 'account'

describe Account do  
      
  let(:account) { Account.new }
  
  context 'balance' do
  
    it 'starts at 0' do
      expect(account.balance).to eq([0])
    end
      
    it 'can be increased with #deposit()' do
      account.deposit(10, "10/10/2020")
      expect(account.return_balance).to eq(10)
    end
      
    it 'can be reduced with #withdrawal()' do
      account.deposit(10, "10/10/2020")
      account.withdrawal(5, "20/10/2020")
      expect(account.return_balance).to eq(5)
    end
   
  end

  context 'dates' do

    it 'dates are recorded at deposit transactions' do
      account.deposit(10, "10/10/2018")
      expect(account.transactions[-1]).to eq("10/10/2018" => 10)
    end

    it 'dates are recorded at withdrawal transactions' do
      account.withdrawal(10, "20/10/2018")
      expect(account.transactions[-1]).to eq("20/10/2018" => -10)
    end

  end
end
