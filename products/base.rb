require 'virtus'

module Product
  class Base
    CODE = '000'.freeze
    NAME = 'Base'.freeze
    PRICE = 0.00

    include Virtus.model(strict: true)
    attribute :code, String
    attribute :name, String
    attribute :price, Float, default: 0.00

    def initialize(*args)
      raise 'Unable to initialize Base object' if self.class == Base
      @code = self.class::CODE
      @name = self.class::NAME
      @price = self.class::PRICE
      super
    end
  end

end
