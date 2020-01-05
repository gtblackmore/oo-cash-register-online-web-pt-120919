class CashRegister

  attr_accessor :total, :items, :discount
  
  def initialize(employee_discount=0)
    @total = 0
    @items = []
    @discount = employee_discount
  end
  
  def add_item(title, price, quantity=1)
    @total += quantity * price
    @items << title
  end
  
  def apply_discount
  end 
  
  def items
  end
  
  def void_last_transaction
  end
  
end
