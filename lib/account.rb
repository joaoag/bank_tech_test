require 'statement'

class Account

attr_accessor :balance, :transactions

  def initialize
    @balance = [0]
    @transactions = []
    @statement = Statement.new
  end

  def return_balance
    calculate_balance
    @balance.flatten.inject(:+)
  end
  
  def deposit(amount, date)
    @transactions << { date => amount }
  end

  def withdrawal(amount, date)
    @transactions << { date => -amount }
  end

private 

  def calculate_balance
    @balance = [0]
    @transactions.each do | hash |
    @balance << hash.values
    end
  end

end 