
class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=nil)
    self.total = 0
    self.discount = discount
  end

  def add_item(title, price)
    self.total += price
  end

end
