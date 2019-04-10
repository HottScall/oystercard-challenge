class Oystercard

  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1


  attr_reader :balance

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(amount)
    fail "Maximum Balance of #{MAXIMUM_BALANCE} Exceeded" if amount + balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  def in_journey?
    @in_journey
  end

  def touch_in
    raise "Minimum balance is £#{MINIMUM_BALANCE}" if @balance < MINIMUM_BALANCE
    @in_journey = true
  end

  def touch_out
    @in_journey = false
  end

end
