require 'rspec'
require './boot'

RSpec.describe Discount::Base do
  it do
    expect { subject.new }.to raise_error(StandardError, 'Unable to initialize Base object')
  end
end
