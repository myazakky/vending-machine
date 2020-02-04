# frozen_string_literal: true

class VendingMachine
  attr_reader :beverages

  def initialize(beverages: {})
    @beverages = beverages
  end

  def push(money, beverage_name)
    money == 100 ? beverage_name : nil
  end

  def add_beverages(beverages)
    VendingMachine.new(
      beverages: @beverages.merge(beverages)
    )
  end

  def ==(other)
    @beverages == other.beverages
  end
end
