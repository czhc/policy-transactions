require 'rspec'
require './checkout'
RSpec.describe Checkout do
  describe '#scan' do
    it do
      foo = double
      subject.scan(foo)
      expect(subject.items).to include(foo)
    end
  end

  describe '#total' do
    it 'applies discounts to gross_total in order' do
      allow(subject).to receive(:gross_total).and_return(1.00)

      first_discount = double(operate: 1)
      second_discount = double(operate: 2)

      allow(subject).to receive(:discounts).and_return([ first_discount, second_discount ])

      expect(subject.total).to eq(2)
    end
  end

  describe '#gross_total' do
    before do
      subject.items << double(price: 1.00)
      subject.items << double(price: 2.00)
    end
    it { expect(subject.gross_total).to eq(3.00) }
  end
end
