require 'rspec'
require './boot'

RSpec.describe ThirtyPoundDeal do
  it { expect(described_class::MARKDOWN_LIMIT).to eq(30.00)}
  let(:pizza){ double(code: '002', price: 1.00) }
  let(:foo){ double(code: 'foo', price: 30.00) }


  it { expect(subject.run([])).to eq([])}

  it do
    discount = instance_double(TotalDiscount)
    allow(subject).to receive(:apply_discount).and_return(discount)
    expect(subject.run([pizza, foo])).to match_array([discount])
  end
end
