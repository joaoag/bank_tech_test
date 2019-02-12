require 'account'
require 'statement'

describe 'Feature: Account, Transaction and Statement' do

  context 'record and display' do
    
    expected_statement_output = "date || credit || debit || balance\n14/01/2012 || || -500.00 || 2500.00\n13/01/2012 || 2000.00 || 3000.00\n10/01/2012 || 1000.00 || 1000.00\n"
    let(:account) { Account.new }
    let(:debit) {Transaction.new(1000, "10/01/2012")}
    let(:statement) { Statement.new }
    let(:credit) {Transaction.new(500, "14/01/2012")}
    
    it 'transactions, their dates and resulting balance' do
      account.deposit(debit)
      account.deposit(debit)
      account.withdrawal(credit)
      expect { statement.print_transactions(account.statement) }.to output(expected_statement_output).to_stdout
    end
  end

end
