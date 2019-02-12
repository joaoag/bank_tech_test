class Statement

  attr_reader :output
  
  def initialize
    @output = ""
  end

  def headers
    "date || credit || debit || balance" + "\n"
  end

  def print_transactions(statement)
    @output = ""
    @output << headers
    statement.reverse.each do |hash|
    hash_formatter(hash)
    end
    puts @output
  end

private

  def hash_formatter(hash)
    hash.each do |k, v| 
      statement_single_line_format(k,v)
    end
  end

  def statement_single_line_format(k,v)
    (v[0]).positive? ? credit_to_string(k,v) : debit_to_string(k,v)
  end

  def credit_to_string(k,v)
    @output << "#{k} || #{'%.2f' %v[0]} || #{'%.2f' % v[1]}" + "\n"
  end

  def debit_to_string(k,v)
    @output<< "#{k} || || #{'%.2f' %v[0]} || #{'%.2f' %v[1]}" + "\n"
  end

end
