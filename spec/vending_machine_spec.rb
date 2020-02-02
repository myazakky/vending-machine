# frozen_string_literal: true

require 'rspec'
require_relative '../lib/vending_machine'

RSpec.describe VendingMachine do
  let(:vending_machine) { VendingMachine.new }

  context 'push button' do
    it 'return nil' do
      expect(vending_machine.push('')).to be_nil
    end

    it 'return nil if inserted outside of 100' do
      inserted_vending_machine = vending_machine.insert(200)
      expect(inserted_vending_machine.push('')).to be_nil
    end

    it 'return nil if a vending machine dont has an argument beverage' do
      expect(vending_machine.insert(100).push('烏龍茶')).to be_nil
    end

    it 'return 烏龍茶 if a vending machine has 烏龍茶' do
      expect(vending_machine.add_beverage('烏龍茶').insert(100).push('烏龍茶')).to eq '烏龍茶'
    end
  end

  context 'insert money' do
    it 'create vending machine object' do
      expected_vending_machine = VendingMachine.new(money: 100)
      expect(vending_machine.insert(100)).to eq expected_vending_machine
    end
  end

  context 'add beverages' do
    it 'create a vending machine object added the beverages' do
      expected_vending_machine = VendingMachine.new(beverages: ['烏龍茶'])

      expect(vending_machine.add_beverage('烏龍茶')).to eq expected_vending_machine
    end
  end

  context 'compare VendingMachine objects' do
    it 'false if each the money different' do
      v1 = VendingMachine.new(money: 0)
      v2 = VendingMachine.new(money: 1)
      expect(v1 == v2).to be false
    end

    it 'false if each the beverages different' do
      v1 = VendingMachine.new(beverages: [])
      v2 = VendingMachine.new(beverages: ['monster'])
      expect(v1 == v2).to be false
    end

    it 'true if each the beverages sequence different' do
      v1 = VendingMachine.new(beverages: %w[a b])
      v2 = VendingMachine.new(beverages: %w[b a])
      expect(v1 == v2).to be true
    end
  end
end
