require 'rspec'
require_relative '../../products/base.rb'
require_relative '../../products/mens_tshirt.rb'

RSpec.describe MensTshirt do
  it { expect(described_class::NAME).to eq('Men\'s T-shirt') }
  it { expect(described_class::CODE).to eq('003') }
  it { expect(described_class::PRICE).to eq(25.00) }
  it do
    expect(subject).to be_an_instance_of(MensTshirt)
  end
end
