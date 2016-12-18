require 'rspec'
require './boot'

RSpec.describe TwoPizzaDeal do
  it { expect(described_class::DISCOUNTABLE).to eq(2.00)}
  it { expect(subject.run([])).to eq([])}

  it 'filters Pizza objects' do
    pizza1 = double(code: '002')
    pizza2 = double(code: '002')
    foo    = double(code: '001')

    items = [pizza2, foo, pizza1]
    expect(subject).to  receive(:filter).
                        with(items).
                        and_return([pizza2, pizza1])

    subject.run(items)
  end

  it 'applies discount when >= 2 pizzas' do
    foo, bar = double, double
    allow(subject).to receive(:filter).with([foo, bar]).and_return([foo, bar])
    expect(subject).to receive(:apply_discount).with(2).once
    subject.run([foo,bar])
  end
end
