class PizzaAndCurryDeal < Deal::Base
  DISCOUNTABLE = 1.94
  WEIGHT = 0
  def run(items)
    return apply_discount(counts_of_pairs(items))
  end

  private

  def counts_of_pairs(items)
    items = filter_for_pizza_or_curry(items)
    return items.group_by{|i| i.code}.values.min{ |a, b| a.length <=> b.length }.count
  end

  def filter_for_pizza_or_curry(items)
    return items.select { |item| [Pizza::CODE, CurrySauce::CODE].include? item.code }
  end

  def apply_discount(n=0)
    return n.times.map do
      BulkDiscount.new(deal: self.class.name, amount: DISCOUNTABLE)
    end
  end
end
