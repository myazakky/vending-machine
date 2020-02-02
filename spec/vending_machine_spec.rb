# frozen_string_literal: true

require 'rspec'
require_relative '../lib/vending_machine'

RSpec.describe VendingMachine do
  let(:vending_machine) { VendingMachine.new }

  context 'push button' do
    it 'return nil' do
      expect(vending_machine.push).to be_nil
    end

    it 'return cola if inserted 100' do
      inserted_vending_machine = vending_machine.insert(100)
      expect(inserted_vending_machine.push).to eq 'cola'
    end

    it 'return nil if inserted outside of 100' do
      inserted_vending_machine = vending_machine.insert(200)
      expect(inserted_vending_machine.push).to be_nil
    end
  end

  context 'insert money' do
    it 'create vending machine object' do
      expected_vending_machine = VendingMachine.new(money: 100)
      expect(vending_machine.insert(100)).to eq expected_vending_machine
    end
  end
end
