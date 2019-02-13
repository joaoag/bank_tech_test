require 'account'

describe Account do  
      
  let(:account) { Account.new }
  let(:transaction) { double :transaction }

  before do
    allow(transaction).to receive(:amount).and_return(10)
    allow(transaction).to receive(:date).and_return("10/10/2020")
  end

  context 'balance' do
  

    it 'starts at 0' do
      expect(account.balance).to eq([0])
    end
      
    it 'can be increased with #deposit()' do
      account.deposit(transaction)
      expect(account.return_balance).to eq(10)
    end
      
    it 'can be reduced with #withdrawal()' do
      account.deposit(transaction)
      account.withdrawal(transaction)
      expect(account.return_balance).to eq(0)
    end
   
  end

  context 'dates' do

    it 'dates are recorded at deposit transactions' do
      account.deposit(transaction)
      expect(account.transactions[-1]).to eq("10/10/2020" => 10)
    end

    it 'dates are recorded at withdrawal transactions' do
      account.withdrawal(transaction)
      expect(account.transactions[-1]).to eq("10/10/2020" => -10)
    end

  end
end
