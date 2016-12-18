require 'rspec'
require_relative '../../products/base.rb'
require_relative '../../products/curry_sauce.rb'

RSpec.describe CurrySauce do
  it { expect(described_class::NAME).to eq('Curry Sauce') }
  it { expect(described_class::CODE).to eq('001') }
  it { expect(described_class::PRICE).to eq(1.95) }
  it do
    expect(subject).to be_an_instance_of(CurrySauce)
  end
end
