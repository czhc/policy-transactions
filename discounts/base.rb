require 'virtus'

module Discount
  class Base
    include Virtus.model
    attribute :deal, String
    attribute :amount, Float

    def initialize(*args)
      raise 'Unable to initialize Base object' if self.class == Base
      super
    end

    def operate(sum)
      return sum
    end
  end
end
