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
          puts  "#{k} || || #{v.abs}"
        end
      end
    end
  end

end

# "|| 0"