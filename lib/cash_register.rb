class CashRegister
  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @cart = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    item = {}
    item[:item] = item
    item[:price] = price
    item[:quantity] = quantity

    @cart << item
    @total += price * quantity
   end

   def apply_discount
     if @discount == 0
       "There is no discount to apply."
     else
       @total -= @total * @discount / 100
       "After the discount, the total comes to $#{total}."
     end
   end

   def items
      all_items = []
      @cart.each do |item|
         all_items << item[:item]
       end
      all_items
    end
end
