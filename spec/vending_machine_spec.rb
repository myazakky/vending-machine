# frozen_string_literal: true

require 'rspec'
require_relative '../lib/vending_machine'

RSpec.describe VendingMachine do
  let(:vending_machine) { VendingMachine.new }

  context 'push button' do
    it 'return cola' do
      expect(vending_machine.push).to eq 'cola'
    end
  end
end
