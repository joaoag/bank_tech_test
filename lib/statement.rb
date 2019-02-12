class Statement

  def headers
    puts "date || credit || debit || balance"
  end

  def print_transactions(statement)
    headers
    statement.reverse.each do |hash|
    hash_formatter(hash)
    end
  end

private

  def hash_formatter(hash)
    hash.each do |k, v| 
      statement_single_line_format(k,v)
    end
  end

  def statement_single_line_format(k,v)
    if (v[0]).positive?
      puts  "#{k} || #{'%.2f' %v[0]} || #{'%.2f' % v[1]}"
    else
      puts  "#{k} || || #{'%.2f' %v[0]} || #{'%.2f' %v[1]}"
    end
  end

end
