require_relative '../../boot.rb'

RSpec.describe 'Pizza Curry Deal' do
  subject { Checkout.new(rules: [PizzaAndCurryDeal.new]) }

  before do
    subject.scan(Pizza.new)
    subject.scan(CurrySauce.new)
    subject.scan(Pizza.new)
    subject.scan(MensTshirt.new)
  end

  #
  it { expect(subject.total).to eq(36.99)}
end
