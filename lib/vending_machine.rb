# frozen_string_literal: true

class VendingMachine
  def push(money)
    money == 100 ? 'cola' : nil
  end
end
