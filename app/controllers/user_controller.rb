class UserController < ApplicationController
  
  def login 
    
  end  
  def admin_login 
    session[:login] = 1 
    session[:cart] = nil 
    flash[:notice] = "Admin Login Successful!!" 
    redirect_to :controller => :items 
  end  
  def logout 
    session[:login] = nil 
    session[:cart] = nil 
    flash[:notice] = "You have logged out successfully!!" 
    redirect_to :controller => :items 
  end 
end
