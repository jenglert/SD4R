class LoginController < ApplicationController
  
  def login
    user = User.new(params[:user])
    if user = User.find_by_email_and_password(user.email, user.password)
      set_logged_in(user)
      redirect_to '/'
    else
      flash[:notice] = "Username and password combination is not valid"
      redirect_to '/'
    end
  end
  
end