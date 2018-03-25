require 'pry'

class CashRegister

  attr_accessor :total, :discount

  @@items = []

  def self.items
    @@items
  end

  def initialize(discount=nil)
    self.total = 0
    self.discount = discount
  end

  def add_item(title, price, quantity=1)
    self.total += price*quantity
    self.class.items << title
  end

  def apply_discount
    if discount
      self.total *= (1 - @discount/100.0)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

end
