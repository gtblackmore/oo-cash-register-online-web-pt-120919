class CashRegister

  attr_accessor :total, :items, :discount
  
  def initialize(employee_discount=0)
    @total = 0
    @items = []
    @discount = employee_discount
  end
  
  def add_item(title, price, quantity=1)
    @total += quantity * price
    quantity.times(@items << title)
  end
  
  def apply_discount
    if @discount > 0
      discount = (@total * @discount/100)
      @total = @total - discount
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end 
  
  def items
    @items
  end
  
  def void_last_transaction
  end
  
end
