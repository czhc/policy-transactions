require_relative '../../boot.rb'

RSpec.describe 'Test Two' do
  subject { Checkout.new(rules: [ThirtyPoundDeal.new, TwoPizzaDeal.new]) }
  before do
    subject.scan(Pizza.new)
    subject.scan(CurrySauce.new)
    subject.scan(Pizza.new)
  end

  it { expect(subject.total).to eq(9.93)}
end
