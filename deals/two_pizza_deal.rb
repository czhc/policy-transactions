class TwoPizzaDeal < Deal::Base
  DISCOUNTABLE = 2.00
  WEIGHT = 0

  def run(items)
    filtered = filter(items)
    if filtered.count >= 2
      return apply_discount(filtered.count)
    else
      return []
    end
  end

  private

  def filter(items)
    return items.select { |item| item.code == Pizza::CODE }
  end

  def apply_discount(n=0)
    return n.times.map do
      BulkDiscount.new(deal: self.class.name, amount: DISCOUNTABLE)
    end
  end
end
