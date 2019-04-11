class Oystercard

  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1
  FARE = 1


  attr_reader :balance, :entry_station

  def initialize
    @balance = 0
    # @in_journey = false
  end


  def top_up(amount)
    fail "Maximum Balance of #{MAXIMUM_BALANCE} Exceeded" if amount + balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def in_journey?
    !!entry_station
    # @in_journey
  end

  def touch_in(station)
    @entry_station = station
    raise "Minimum balance is £#{MINIMUM_BALANCE}" if @balance < MINIMUM_BALANCE
    # @in_journey = true

  in_journey?
  end

  def touch_out
    deduct(FARE)
    @entry_station = nil
    in_journey?
    # @in_journey = false
  end

  private

  def deduct(amount)
    @balance -= amount
  end

end
