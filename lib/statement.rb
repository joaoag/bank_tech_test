class Statement

  def headers
    puts "date || credit || debit || balance"
  end

  def print_transactions(transactions)
    transactions.each do | hash |
      hash.each do |k, v| 
        if v > 0
          puts  "#{k} || #{v}" 
        else
          puts  "#{k} || || #{v*-1}"
        end
      end
    end
  end

  def print_balance
    
  end

end

# "|| 0"