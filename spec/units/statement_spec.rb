require 'statement'


describe 'Statement' do
  statement = Statement.new
  single_transaction = [{"10/10/2020"=>10}]

  it 'displays column headers' do
    expect{statement.headers}.to output("date || credit || debit || balance\n").to_stdout
  end

  it 'displays single transaction' do
    expect{statement.print_transactions(single_transaction)}.to output("10/10/2020 || 10").to_stdout
  end

end