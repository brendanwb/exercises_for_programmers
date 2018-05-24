class TipCalc
  attr_reader :tip, :total

  def initialize(bill_amount, tip_rate)
    @bill_amount = bill_amount
    @tip_rate    = tip_rate
    @tip         = 0
    @total       = 0
  end

  def process
    @tip   = process_tip
    @total = process_total
  end

  private
  def process_tip
    (@bill_amount * (@tip_rate / 100.0)).round(2)
  end

  def process_total
    (@bill_amount * (1 + (@tip_rate / 100.0))).round(2)
  end
end
