require 'transaction'

describe 'Transaction' do
  
  it 'stores date of creation' do
    date = DateTime.now.strftime("%d/%m/%Y")
    transaction = Transaction.new(10)
    expect(transaction.date).to eq(date)
  end

end