class Account

  

  def initialize
    @balance = [0]
  end

  def balance
    @balance.reduce(:+)
  end

  def deposit(amount)
    @balance << amount
  end

end
