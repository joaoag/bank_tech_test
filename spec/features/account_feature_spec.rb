require 'account'
require 'statement'

describe 'Feature: Account and Statement' do

  context 'record and display' do
    
    expected_statement_output = "date || credit || debit || balance\n14/01/2012 || || -500.00 || 2500.00\n13/01/2012 || 2000.00 || 3000.00\n10/01/2012 || 1000.00 || 1000.00\n"
    let(:account) { Account.new }
    let(:statement) { Statement.new }
    let (:deposit_1k) { Transaction.new(1000) }
    let (:deposit_2k) { Transaction.new(2000) }
    let (:withdrawal_500) { Transaction.new(500) }

    it 'transactions, their dates and resulting balance' do
      account.deposit(deposit_1k)
      account.deposit(deposit_2k)
      account.withdrawal(withdrawal_500)
      expect { statement.print_transactions(account.statement) }.to output(expected_statement_output).to_stdout
    end
  end

end
