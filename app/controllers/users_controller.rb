class UsersController < ApplicationController
  
  before_filter :logged_in_filter, :only => [:registration_thanks]
  
  def index
    redirect_to :action => 'new'
  end

  def new
    @user = User.new(:city_id => params[:city_id])
    render :layout => 'standard2'
  end

  def create
    @user = User.new(params[:user])
    begin
      @user.desired_move_in_month ||= Time.parse(params[:desired_move_in_month])
    rescue
    end
    
    if @user.save
      set_logged_in(@user)
      redirect_to :controller => 'users', :action => 'registration_thanks'
    else
            
      render :action => 'new'
    end
  end
  
  # Displays a page indicating our thanks for registering
  def registration_thanks
  end
end
