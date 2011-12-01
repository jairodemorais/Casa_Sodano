class CartsController < ApplicationController
  before_filter :set_cart, :only => :index
  
  def add
    if session[:cart_id]
      @cart = Cart.find_by_id session[:cart_id]
    else 
      @cart = Cart.new
      @cart.user = current_user
    end
    
    item = Item.find_by_id params[:id]
    @cart.add_item item
    
    if @cart.save
      session[:cart_id] = @cart.id
      set_cart
      render :json => @cart.as_json, :status => :ok
    else
      render :json => {}, :status => :not_saved
    end
  end
  
  def index
    @cart = Cart.find_by_id session[:cart_id]
  end
  
  def checkout
    session[:cart_id] = nil
    redirect_to :controller => :items
  end
end

