require "spec_helper"

RSpec.describe TipCalc do
  it "should output a tip and total with tip" do
    bill_amount = 10
    tip_rate = 15
    tip_calc = TipCalc.new(bill_amount, tip_rate)
    tip_calc.process
    tip = tip_calc.tip
    total = tip_calc.total

    expect(tip).to eq(1.5)
    expect(total).to eq(11.5)
  end

  it "should round up when the decimals go past 2 places" do
    bill_amount = 11.25
    tip_rate = 15
    tip_calc = TipCalc.new(bill_amount, tip_rate)
    tip_calc.process
    tip = tip_calc.tip
    total = tip_calc.total

    expect(tip).to eq(1.69)
    expect(total).to eq(12.94)
  end
end
