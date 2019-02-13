require 'transaction'

describe Transaction do
  
  it 'stores date of creation' do
    date = Date.new.strftime("%d/%m/%Y")
    transaction = Transaction.new(10)
    expect(transaction.date).to eq(date)
  end

  it 'stores amount of transaction' do
    date = Date.new.strftime("%d/%m/%Y")
    transaction = Transaction.new(10)
    expect(transaction.date).to eq(date)
  end

end
