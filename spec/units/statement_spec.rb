require 'statement'

describe 'Statement' do

  let(:statement) { Statement.new }
  single_deposit = [{ "10/10/2020" => [10, 10] }]
  single_withdrawal = [{ "10/10/2020" => [-5, 5] }]

  context 'displays' do
    it 'column headers' do
      expect { statement.headers }.to output("date || credit || debit || balance\n").to_stdout
    end

    it 'single deposit transaction with date and balance' do
      expect { statement.print_transactions(single_deposit) }.to output("date || credit || debit || balance\n10/10/2020 || 10.00 || 10.00\n").to_stdout
    end

    it 'single withdrawal transaction with date and balance' do
      expect { statement.print_transactions(single_withdrawal) }.to output("date || credit || debit || balance\n10/10/2020 || || -5.00 || 5.00\n").to_stdout
    end
  end
  
end
