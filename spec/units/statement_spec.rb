require 'statement'

describe 'Statement' do

  let(:statement) { Statement.new }
  
  expected_headers = "date || credit || debit || balance"

  single_credit = [{ "10/10/2020" => [10, 10] }]
  credit_statement = "date || credit || debit || balance\n10/10/2020 || 10.00 || 10.00\n"
  
  single_debit = [{ "10/10/2020" => [-5, 5] }]
  debit_statement = "date || credit || debit || balance\n10/10/2020 || || -5.00 || 5.00\n"

  context 'displays' do
    it 'column headers' do
      expect(statement.headers).to eq(expected_headers)
    end

    it 'single deposit transaction with date and balance' do
      expect { statement.print_transactions(single_credit) }.to output(credit_statement).to_stdout
    end

    it 'single withdrawal transaction with date and balance' do
      expect{ statement.print_transactions(single_debit) }.to output(debit_statement).to_stdout
    end
  end
  
end
