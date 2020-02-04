# frozen_string_literal: true

class VendingMachine
  attr_reader :beverages
  attr_reader :money

  def initialize(beverages: {}, money: 0)
    @beverages = beverages
    @money = money
  end

  def push(money, beverage_name)
    money == 100 ? beverage_name : nil
  end

  def add_beverages(beverages)
    VendingMachine.new(
      beverages: @beverages.merge(beverages)
    )
  end

  def insert(money)
    VendingMachine.new(beverages: @beverages, money: @money + money)
  end

  def beverages_who_can_buy
    @beverages.keys.map(&:to_s).sort.delete_if do |name|
      !can_buy?(name)
    end
  end

  def can_buy?(beverage_name)
    @beverages[beverage_name.intern] <= @money
  end

  def ==(other)
    (@beverages == other.beverages) && (@money == other.money)
  end
end
