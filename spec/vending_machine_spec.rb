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

  context 'add_beverages' do
    v = VendingMachine.new

    it 'create VendingMachine object added the beverage' do
      expect(v.add_beverages(orange: 200)).to eq VendingMachine.new(
        beverages: { orange: 200 }
      )
    end
  end

  context 'compare' do
    it 'is same each beverages' do
      v1 = VendingMachine.new(beverages: { cola: 100, orange: 100 })
      v2 = VendingMachine.new(beverages: { orange: 100, cola: 100 })

      expect(v1 == v2).to be true
    end

    it 'is different each beverages' do
      v1 = VendingMachine.new(beverages: { cola: 100, orange: 200 })
      v2 = VendingMachine.new(beverages: { orange: 100, cola: 100 })

      expect(v1 == v2).to be false
    end

    it 'is same each money' do
      v1 = VendingMachine.new(money: 100)
      v2 = VendingMachine.new(money: 100)

      expect(v1 == v2).to be true
    end

    it 'is different each money' do
      v1 = VendingMachine.new(money: 100)
      v2 = VendingMachine.new(money: 200)

      expect(v1 == v2).to be false
    end
  end

  context 'insert' do
    v = VendingMachine.new

    it 'is inserted 100' do
      expect(v.insert(100)).to eq VendingMachine.new(money: 100)
    end

    it 'is not inserted 100' do
      expect(v.insert(100)).not_to eq VendingMachine.new(money: 200)
    end
  end
end
