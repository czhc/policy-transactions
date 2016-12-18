require 'rspec'
require './boot'

RSpec.describe TotalDiscount do
  subject { TotalDiscount.new(amount: 10) }
  it { expect(subject).to be_an_instance_of(TotalDiscount)}
  it { expect(subject.operate(50.00)).to eq(45.00)}
end
