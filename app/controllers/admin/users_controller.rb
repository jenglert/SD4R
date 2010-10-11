class Admin::UsersController < AdminController
  
  def index
    @users = User.find(:all, :order => 'created_at desc')
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def show_popup
    @user = User.find(params[:id])
    
    render :layout => 'blank'
  end
  
end