class Statement

  def headers
    puts "date || credit || debit || balance"
  end

  def print_transactions(statement)
    headers
    statement.reverse.each do |hash|
      hash.each do |k, v| 
        if (v[0]).positive?
          puts  "#{k} || #{v[0]} || #{v[1]}"
        else
          puts  "#{k} || || #{v[0]} || #{v[1]}"
        end
      end
    end
  end

end
