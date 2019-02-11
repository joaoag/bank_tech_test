class Account

attr_accessor :balance, :transactions

  def initialize
    @balance = [0]
    @transactions = []
  end

  def display_balance
    calculate_balance
    p @balance.flatten.inject(:+)
  end
  
  def deposit(amount, date)
    @transactions << { date => amount }
  end

  def withdrawal(amount)
    @balance << -amount
  end

private 

  def calculate_balance
    @transactions.each do | hash |
    @balance << hash.values
    end
  end

end 