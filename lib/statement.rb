class Statement

  def headers
    "date || credit || debit || balance"
  end

  def print_transactions(statement)
    puts headers
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
    output = ""
    if (v[0]).positive?
      output << "#{k} || #{'%.2f' %v[0]} || #{'%.2f' % v[1]}"
    else
      output <<  "#{k} || || #{'%.2f' %v[0]} || #{'%.2f' %v[1]}"
    end
      puts output
  end

end
