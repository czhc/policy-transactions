class BulkDiscount < Discount::Base
  def operate(sum)
    return sum - amount
  end
end
