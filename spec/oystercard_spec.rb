require 'oystercard'

describe Oystercard do
  it "is expected to have a balance of zero" do
    expect(subject.balance).to eq(0)
  end

  describe '#top_up' do
    it "can top up balance" do
      expect{ subject.top_up 1 }.to change{ subject.balance }.by (1)
    end
  end

  it 'raises an error if the maximum value is exceeded' do
    maximum_balance = Oystercard::MAXIMUM_BALANCE
    subject.top_up maximum_balance
    expect{ subject.top_up 1 }.to raise_error "Maximum Balance of #{maximum_balance} Exceeded"
  end

  describe "#deduct" do
    it "deducts money from balance when used" do
      expect{ subject.deduct 1 }.to change{ subject.balance }.by (-1)
    end
  end

  describe "#in_journey?" do
    it "returns false for a new card" do
      expect(subject).not_to be_in_journey
    end
  end

  describe "#touch_in" do
    it "change in_journey from false to true" do
      subject.touch_in
      expect(subject).to be_in_journey
      # expect{subject.touch_in}.to change{subject.in_journey?}.to(true)
    end
  end

  describe "#touch_out" do
    it "change journey from true to false" do
      subject.touch_in    
      subject.touch_out
      expect(subject).not_to be_in_journey
    end
  end
end
