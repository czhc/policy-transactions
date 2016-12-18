module Deal
  class Base
    extend Deal
    attr_reader :weight

    def initialize(*args)
      raise 'Unable to initialize Base object' if self.class == Base
      @weight = self.class::WEIGHT
      super
    end

    def run(items)
      return []
    end
  end

  def self.sort_by_weight(deals)
    return deals.sort_by!(&:weight)
  end
end
