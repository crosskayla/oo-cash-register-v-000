require 'pry'
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    self.total = 0
    self.discount = discount
  end

  def add_item(title, price, quantity=1)
    self.total += price*quantity
  end

  def apply_discount
    self.total *= (1 - @discount/100)
    binding.pry
  end

end
