class ThirtyPoundDeal < Deal::Base
  MARKDOWN_LIMIT = 30.00
  WEIGHT = 1

  def run(items)
    if filter(items) > MARKDOWN_LIMIT
      return [apply_discount]
    else
      return []
    end
  end


  private

  def filter(items)
    items.inject(0){|sum,x| sum + x.price }
  end

  def apply_discount
    return TotalDiscount.new(deal: self.class.name, amount: 10)
  end
end
