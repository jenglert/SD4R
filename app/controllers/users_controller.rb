class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    
    @user.first_name = nil if @user.first_name == 'First Name'
    @user.last_name = nil if @user.last_name == 'Last Name'
    @user.email = nil if @user.email = 'Email Address'
    
    if @user.save
      render :action => 'registration_thanks'
    else
      render :action => 'new'
    end
  end
  
  def registration_thanks
    
  end
end
