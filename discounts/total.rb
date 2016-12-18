class TotalDiscount < Discount::Base
  def operate(sum)
    return sum * (1.0 - (amount/100.00).round(1))
  end
end
