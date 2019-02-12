class Account

  attr_accessor :balance, :transactions, :statement

  def initialize
    @balance = [0]
    @transactions = []
    @statement = []
  end

  def return_balance
    calculate_balance
    @balance.flatten.inject(:+)
  end
    
  def deposit(amount, date)    
    @transactions << { date => amount }
    @statement << { date => [amount, return_balance] }
  end

  def withdrawal(amount, date)
    @transactions << { date => -amount }
    @statement << { date => [-amount, return_balance] }
  end

  private 

  def calculate_balance
    @balance = [0]
    @transactions.each do |hash|
      @balance << hash.values
    end
  end
end 
