# frozen_string_literal: true

class Bevarage
  attr_reader :name
  attr_reader :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def able_to_buy?(money)
    money >= @price
  end

  def ==(other)
    @name == other.name
  end
end
