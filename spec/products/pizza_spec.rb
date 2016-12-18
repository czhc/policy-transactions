require 'rspec'
require_relative '../../products/base.rb'
require_relative '../../products/pizza.rb'

RSpec.describe Pizza do
  it { expect(described_class::NAME).to eq('Pizza') }
  it { expect(described_class::CODE).to eq('002') }
  it { expect(described_class::PRICE).to eq(5.99) }
  it do
    expect(subject).to be_an_instance_of(Pizza)
  end
end
