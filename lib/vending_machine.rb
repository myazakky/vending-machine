# frozen_string_literal: true

class VendingMachine
  attr_reader :money

  def initialize(money = 0)
    @money = money
  end

  def push
    'cola'
  end

  def insert(money)
    VendingMachine.new(money: @money + money)
  end

  def ==(other)
    @money == other.money
  end
end
