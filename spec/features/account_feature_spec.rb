require 'account'
require 'statement'

describe 'Feature: Account and Statement' do

  context 'record and display' do
    
    expected_statement_output = "date || credit || debit || balance\n14/01/2012 || || -500.00 || 2500.00\n13/01/2012 || 2000.00 || 3000.00\n10/01/2012 || 1000.00 || 1000.00\n"
    let(:account) { Account.new }
    let(:statement) { Statement.new }
    
    it 'transactions, their dates and resulting balance' do
      account.deposit(1000, "10/01/2012")
      account.deposit(2000, "13/01/2012")
      account.withdrawal(500, "14/01/2012")
      expect { statement.print_transactions(account.statement) }.to output(expected_statement_output).to_stdout
    end
  end

end
