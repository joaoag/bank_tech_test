class Statement

  def headers
    puts "date || credit || debit || balance"
  end

  def print_transactions(statement)
    headers
    statement.reverse.each do |hash|
      hash.each do |k, v| 
        if (v[0]).positive?
          puts  "#{k} || #{'%.2f' %v[0]} || #{'%.2f' % v[1]}"
        else
          puts  "#{k} || || #{'%.2f' %v[0]} || #{'%.2f' %v[1]}"
        end
      end
    end
  end

end
