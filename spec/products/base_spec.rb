require 'rspec'
require_relative '../../products/base.rb'

RSpec.describe Product::Base do
  it { expect(described_class::NAME).to eq('Base') }
  it { expect(described_class::CODE).to eq('000') }
  it { expect(described_class::PRICE).to eq(0.00) }
  it do
    expect { described_class.new }.to raise_error(StandardError, 'Unable to initialize Base object')
  end
end
