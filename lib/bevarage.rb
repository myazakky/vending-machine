# frozen_string_literal: true

class Bevarage
  def initialize(name, price)
    @name = name
    @price = price
  end

  def able_to_buy?(money)
    money >= @price
  end
end
