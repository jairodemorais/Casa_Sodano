class ApplicationController < ActionController::Base
  #protect_from_forgery
  
  def set_cart
    @cart_quantity = session[:cart_id].present? && user_signed_in? ? cart_item_count : 0
  end
  
  private
  def cart_item_count
    total = 0
    Cart.find(session[:cart_id]).cart_items.each do |item|
      total += item.quantity
    end
    total
  end
end
