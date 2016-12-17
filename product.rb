class Product
  attr_accessor :code, :name, :price
  def initialize(**args)
    @code = args[:code]
    @name = args[:name]
    @price = args[:price]
  end
end
