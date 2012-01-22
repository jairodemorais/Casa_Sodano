class CartsController < ApplicationController
  before_filter :set_cart, :only => :index

  def add
    if !user_signed_in?
      render :json => "{ 'error' : 'the user is not loggued'}", :status => :not_logged
    else
      @cart = get_cart

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
  end

  def index
    @cart = get_cart
  end

  def checkout
    session[:cart_id] = nil
    redirect_to :controller => :items
  end

  def product_reserves
    @cart = Cart.find_by_id session[:cart_id]

    UserMailer.product_reserves(current_user, @cart).deliver
    session[:cart_id] = nil
    redirect_to :controller => :items,  :notice => "Un email con los detalles de su compra ha sido enviando a su casilla."
  end

private
  def get_cart
    if session[:cart_id]
      @cart = Cart.find_by_id session[:cart_id]
    else
      @cart = Cart.new
      @cart.user = current_user
    end
  @cart
  end
end
