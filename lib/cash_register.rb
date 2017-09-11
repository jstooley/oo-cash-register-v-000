
class CashRegister
  attr_accessor :discount, :total, :last_transaction, :items
  def initialize(discount = nil)
    self.total = 0
    self.discount =discount
    self.items = []
  end


  def add_item(title,price,quantity = 1)
    self.total += (price * quantity)
    quantity.times do
      self.items << title
    end
    self.last_transaction = (price * quantity)
  end

  def apply_discount
    if self.discount == nil
      "There is no discount to apply."
    else
      self.total -= self.total * (self.discount.to_f/100)
      "After the discount, the total comes to $#{total.round}."
    end
  end

  def items
    self.items
  end

  def void_last_transaction
    self.total -= self.last_transaction
  end

end
