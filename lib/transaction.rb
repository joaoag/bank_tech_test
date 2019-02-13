require 'date'

class Transaction

  attr_reader :amount, :date

  def initialize(amount)
    @amount = amount
    @date = DateTime.now.strftime("%d/%m/%Y")
  end
  
end