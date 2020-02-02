# frozen_string_literal: true

class VendingMachine
  attr_reader :money
  attr_reader :beverages

  def initialize(money: 0, beverages: [])
    @money = money
    @beverages = beverages
  end

  def push(beverage_name)
    if @money == 100 && @beverages.include?(beverage_name)
      beverage_name
    else
      nil
    end
  end

  def insert(money)
    VendingMachine.new(
      money: @money + money,
      beverages: @beverages
    )
  end

  def add_beverage(beverage)
    VendingMachine.new(
      money: @money,
      beverages: @beverages + [beverage]
    )
  end

  def ==(other)
    (@money == other.money) && (@beverages.sort == other.beverages.sort)
  end
end
