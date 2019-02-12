class Transaction

  attr_reader :amount, :date

  def initialize(amount)
    @amount = amount
    @date = Date.now.strftime("%m/%d/%Y")
    
  end
end