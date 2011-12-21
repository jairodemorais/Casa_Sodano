class ApplicationController < ActionController::Base
  before_filter :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
  
  def default_url_options(options={})
    logger.debug "default_url_options is passed options: #{options.inspect}\n"
    { :locale => I18n.locale }
  end
  
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
