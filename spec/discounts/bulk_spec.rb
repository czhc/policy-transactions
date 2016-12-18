require 'rspec'
require './boot'

RSpec.describe BulkDiscount do
  subject { BulkDiscount.new(amount: 10) }
  it { expect(subject).to be_an_instance_of(BulkDiscount)}
  it { expect(subject.operate(50.00)).to eq(40.00)}
end
