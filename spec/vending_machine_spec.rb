# frozen_string_literal: true

require_relative '../lib/vending_machine'

RSpec.describe VendingMachine do
  context 'push' do
    v = VendingMachine.new

    it 'return cola' do
      expect(v.push).to eq 'cola'
    end
  end
end
