require "pry"
class CashRegister

    attr_accessor :total, :discount, :items, :last_price
   
    def initialize(discount = 0) 
        @total = 0
        @discount = discount
        @items = []
    end 


    def add_item(title,price,quantity=1)
        self.total += price * quantity
        quantity.times { @items << title}
        @last_price = price*quantity 
         
    end 

    def apply_discount
        if discount != 0 
            self.total = total - ( total * discount / 100 )
            "After the discount, the total comes to $#{self.total}."   
        else
            "There is no discount to apply."  
        end
    end 

   

    def void_last_transaction
        
     self.items.nil? ? self.total = 0.0 : self.total -= @last_price
      
    end 


end