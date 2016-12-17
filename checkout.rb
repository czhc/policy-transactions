require 'virtus'
require_relative 'product'

class Checkout
  attr_reader :items, :total
  def initialize(*policies)
    @items = []
    @total = 0
  end

  def scan(item)
    @total = @total += item.price
    @items.push(item)
    return item
  end
end
