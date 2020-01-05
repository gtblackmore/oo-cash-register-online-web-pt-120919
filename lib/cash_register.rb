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
    discount = @total * @discount
    @total = @total - discount
    puts "After the discount, total comes to $800."
   
  end 
  
  def items
  end
  
  def void_last_transaction
  end
  
end
