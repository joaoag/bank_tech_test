require 'statement'


describe 'Statement' do
  statement = Statement.new
  single_deposit = [{"10/10/2020"=>10}]
  single_withdrawal = [{"10/10/2020"=>-5}]

  it 'displays column headers' do
    expect{statement.headers}.to output("date || credit || debit || balance\n").to_stdout
  end

  it 'displays single deposit transaction' do
    expect{statement.print_transactions(single_deposit)}.to output("10/10/2020 || 10\n").to_stdout
  end

  it 'displays single withdrawal transaction' do
    expect{statement.print_transactions(single_withdrawal)}.to output("10/10/2020 || || 5\n").to_stdout
  end

  it 'displays single balance' do
    account_balance = 10
    expect{statement.print_balance(account_balance)}.to output("|| 10\n").to_stdout
  end

end