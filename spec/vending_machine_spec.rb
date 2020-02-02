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

  context 'insert money' do
    it 'create vending machine object' do
      expected_vending_machine = VendingMachine.new(money: 100)
      expect(vending_machine.insert(100)).to eq expected_vending_machine
    end
  end
end
