# frozen_string_literal: true

class VendingMachine
  def push(money, beverage_name)
    money == 100 ? beverage_name : nil
  end
end
