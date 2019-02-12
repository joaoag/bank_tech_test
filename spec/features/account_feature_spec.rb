require 'account'
require 'statement'

describe 'Account' do

  expected_statement_output = "date || credit || debit || balance
14/01/2012 || || -500.0 || 2500.0
13/01/2012 || 2000.0 || 3000.0
10/01/2012 || 1000.0 || 1000.0"
  
  account = Account.new
  statement = Statement.new
  
  it 'records and can display transactions, their dates and resulting balance' do
    account.deposit(1000.00, "10/01/2012")
    account.deposit(2000.00, "13/01/2012")
    account.withdrawal(500.00, "14/01/2012")
    expect{statement.print_transactions(account.statement)}.to output(expected_statement_output).to_stdout
  end

end