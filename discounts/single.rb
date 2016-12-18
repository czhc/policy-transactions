class SingleDiscount < Discount::Base
  def operate(sum)
    return sum - amount
  end
end
