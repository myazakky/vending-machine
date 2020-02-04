# frozen_string_literal: true

require_relative '../lib/vending_machine'

RSpec.describe VendingMachine do
  context 'push' do
    v = VendingMachine.new

    it 'return cola if the arg is 100' do
      expect(v.push(100, 'orange')).to eq 'orange'
    end

    it 'return nil if the arg is not 100' do
      expect(v.push(200, 'cola')).to be_nil
    end
  end
end
