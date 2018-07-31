class AmazonTransaction 
  
  attr_accessor :total, :items, :discount 
  
  def initialize (discount = 0, items = [], total = 0)
    @total = total
    @items = items
    @discount = discount 
  end 
  
  def add_item (title, price, quantity = 1)
    @total += price * quantity
    while quantity != 0 
      @items << title
      quantity -= 1 
    end 
  end 
  
  def apply_discount
    if @discount == 0 
      "There is no discount to apply."
    else 
      discount = (@discount / 100.0)*@total
      new_total = @total-discount
      @total = new_total
    end 
  end
  
 end 
  
  # transaction1 = AmazonTransaction.new(9.99, 5)
  
  
  # puts AmazonTransaction.new