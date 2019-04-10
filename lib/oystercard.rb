class Oystercard

  MAXIMUM_BALANCE = 90

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(amount)
    fail "Maximum Balance of #{MAXIMUM_BALANCE} Exceeded" if amount + balance > MAXIMUM_BALANCE
    @balance = @balance + amount
  end

end