# frozen_string_literal: true

require 'rspec'
require_relative '../lib/bevarage'

RSpec.describe Bevarage do
  context 'price is 200' do
    bevarage = Bevarage.new('cola', 200)

    it 'return true if the argument >= the price' do
      expect(bevarage.able_to_buy?(200)).to be true
    end

    it 'return false if the argument < the price' do
      expect(bevarage.able_to_buy?(199)).to be false
    end
  end
end
