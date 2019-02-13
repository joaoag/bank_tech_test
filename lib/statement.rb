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
    hash.each do |date, valu_bal| 
      statement_single_line_format(date, valu_bal)
    end
  end

  def statement_single_line_format(date, valu_bal)
    (valu_bal[0]).positive? ? cred_to_str(date, valu_bal) : deb_to_str(date, valu_bal)
  end

  def cred_to_str(date, valu_bal)
    @output << "#{date} || #{'%.2f' % valu_bal[0]} || #{'%.2f' % valu_bal[1]}" + "\n"
  end

  def deb_to_str(date, valu_bal)
    @output << "#{date} || || #{'%.2f' % valu_bal[0]} || #{'%.2f' % valu_bal[1]}" + "\n"
  end

end
