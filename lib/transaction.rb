require 'Date'

class Transaction

  attr_reader :amount, :date

  def initialize(amount)
    @amount = amount
    @date = Date.today.strftime("%d/%m/%Y")
  end
  
end
