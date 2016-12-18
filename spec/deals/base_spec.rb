require 'rspec'
require_relative '../../deals/base.rb'

RSpec.describe Deal::Base do
  it do
    expect { described_class.new }.to raise_error(StandardError, 'Unable to initialize Base object')
  end
end
