class Admin::UsersController < AdminController
  
  def index
    @users = User.find(:all, :order => 'upper(last_name) desc')
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def show_popup
    @user = User.find(params[:id])
    
    render :layout => 'blank'
  end
  
end