class Statement

  def headers
    puts "date || credit || debit || balance"
  end

  def print_transactions(transactions)
    transactions.each do | hash |
      hash.each { |k, v| puts  "#{k} || #{v}" }
    end
  end

end