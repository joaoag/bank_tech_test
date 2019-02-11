require 'statement'


describe 'Statement' do
  statement = Statement.new

  it 'should display column headers' do
    expect{statement.headers}.to output("date || credit || debit || balance\n").to_stdout
  end

end