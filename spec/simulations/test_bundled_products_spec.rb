require_relative '../../boot.rb'

RSpec.describe 'Bundled Items Deal' do
  subject { Checkout.new(rules: [ThirtyPoundDeal.new, TwoPizzaDeal.new]) }
  before do
    subject.scan(CurrySauce.new)
    subject.scan(Pizza.new)
    subject.scan(MensTshirt.new)
    subject.scan(ShirtBundle.new)
  end

  it { expect(subject.total).to eq(65.65)}
end
