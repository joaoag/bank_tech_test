require 'account'
require 'statement'

describe 'Feature: Account and Statement' do

  let(:deposit_1k) { double :transaction }
  let(:deposit_2k) { double :transaction }
  let(:withdrawal_500) { double :transaction }

before do
    allow(deposit_1k).to receive(:amount).and_return(1000)
    allow(deposit_1k).to receive(:date).and_return("10/01/2012")

    allow(deposit_2k).to receive(:amount).and_return(2000)
    allow(deposit_2k).to receive(:date).and_return("13/01/2012")

    allow(withdrawal_500).to receive(:amount).and_return(500)
    allow(withdrawal_500).to receive(:date).and_return("14/01/2012")
  end

  context 'record and display' do
    
    expected_statement_output = "date || credit || debit || balance\n14/01/2012 || || -500.00 || 2500.00\n13/01/2012 || 2000.00 || 3000.00\n10/01/2012 || 1000.00 || 1000.00\n"
    let(:account) { Account.new }
    let(:statement) { Statement.new }


    it 'transactions, their dates and resulting balance' do
      account.deposit(deposit_1k)
      account.deposit(deposit_2k)
      account.withdrawal(withdrawal_500)
      expect { statement.print_transactions(account.statement) }.to output(expected_statement_output).to_stdout
    end
  end

end
