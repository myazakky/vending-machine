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

  context 'compare Bevarage objects' do
    b1 = Bevarage.new('cola', 100)

    it 'true if name of each the objects is not different' do
      b2 = Bevarage.new('cola', 200)
      expect(b1 == b2).to be true
    end

    it 'false if name of each the objects is different' do
      b2 = Bevarage.new('orange', 100)
      expect(b1 == b2).to be false
    end
  end
end
