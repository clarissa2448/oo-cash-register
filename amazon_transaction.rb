# Code your cash register here!
class AmazonTransaction
    attr_accessor :discount, :total, :items
   def initialize(discount = 0)
       @total = 0
       @items = []
       @discount = discount
   end
   def add_item(title, price, quantity = 1)
       count = 0
       while count < quantity 
           @items.push(title)
           count += 1
        end
           
       @total += price * quantity
   end
   def apply_discount()
       if @discount == 0
           return "There is no discount to apply."
        else
            @total = @total * (100-@discount)/100
            return "After the discount, the total comes to $#{total}."
        end
   end
   def new_register()
       return @items
    end
end
