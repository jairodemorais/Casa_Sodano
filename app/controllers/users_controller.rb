class UsersController < ApplicationController
  def login
  end
  
  def admin_login
    session[:login] = 1
    session[:cart] = nil
    flash[:notice] = "Session iniciada como administrador."
    redirect_to :controller => :items
  end
  
  def logout
    session[:login] = nil
    session[:cart] = nil
    flash[:notice] = "Cession terminada"
    redirect_to :controller => :items
  end 
end
