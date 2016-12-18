require_relative '../boot.rb'

RSpec.describe 'Test One' do
  subject { Checkout.new(rules: [ThirtyPoundDeal.new, TwoPizzaDeal.new]) }
  before do
    subject.scan(CurrySauce.new)
    subject.scan(Pizza.new)
    subject.scan(MensTshirt.new)
  end

  it { expect(subject.total).to eq(29.65)}
end
