class Cart < ActiveRecord::Base
  has_many :cart_items, :dependent => :destroy , :autosave => true
  belongs_to :user
  
  def add_item item
    cart_item = nil
    self.cart_items.each do |c_item|
      if c_item.item.id == item.id
        cart_item = c_item
        c_item.quantity += 1
      end
    end
    unless cart_item
      cart_item = CartItem.new :item => item, :quantity => 1, :price => item.price
      self.cart_items << cart_item
    end
  end
end
