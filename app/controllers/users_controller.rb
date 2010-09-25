class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end
  
  def index
    redirect_to :action => 'new'
  end

  def new
    @user = User.new(:first_name => 'First Name', :last_name => 'Last Name', :email => "Email Address", :password => 'Password', :city_id => params[:city_id])
  end

  def create
    @user = User.new(params[:user])
    begin
      @user.desired_move_in_month ||= Time.parse(params[:desired_move_in_month])
    rescue
    end
    
    @user.first_name = nil if @user.first_name == 'First Name'
    @user.last_name = nil if @user.last_name == 'Last Name'
    @user.email = nil if @user.email == 'Email Address'
    @user.password = nil if @user.password == 'Password'
    
    if @user.save
      render :action => 'registration_thanks'
    else
      @user.first_name = 'First Name' if @user.first_name.nil?
      @user.last_name = 'Last Name' if @user.last_name.nil?
      @user.email = 'Email Address' if @user.email.nil?
      @user.password = 'Password' if @user.password.nil?
      
      render :action => 'new'
    end
  end
  
  # Displays a page indicating our thanks for registering
  def registration_thanks
  end
end
