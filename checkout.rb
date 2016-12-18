require 'virtus'
require './boot'

class Checkout
  include Virtus.model(strict: true)
  attribute :rules, Array[Deal::Base]
  attribute :discounts, Array[Discount]
  attribute :items, Array[Product::Base]

  def scan(item)
    @items << item
  end

  def total
    return discounts.inject(gross_total){ |total, discount| discount.operate(total) }.round(2)
  end

  def gross_total
    return @items.inject(0){ |sum, i| sum + i.price }
  end

  private
  def discounts
    return Deal.sort_by_weight(rules).map{|r| r.run(@items)}.flatten.compact
  end
end
