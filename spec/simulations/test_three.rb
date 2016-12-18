require_relative '../boot.rb'

RSpesubject.describe 'Test Three' do
  subject { Checkout.new(rules: [ThirtyPoundDeal.new, TwoPizzaDeal.new]) }
  before do
    subject.scan(Pizza.new)
    subject.scan(CurrySauce.new)
    subject.scan(Pizza.new)
    subject.scan(MensTshirt.new)
  end

  it { expect(subject.total).to eq(31.44)}
end
