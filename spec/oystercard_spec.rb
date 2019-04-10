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
end
